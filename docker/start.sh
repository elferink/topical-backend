#check env
: ${DOMAIN?		"You need to set environment variable DOMAIN"}
: ${USERNAME?	"You need to set environment variable USERNAME"}
: ${PASSWORD?	"You need to set environment variable PASSWORD"}
: ${URL?		"You need to set environment variable URL"}
: ${ROOMS?		"You need to set environment variable ROOMS"}

cd /tmp
rm -rf topical-backend; true
git clone https://github.com/niesink/topical-backend.git
cd topical-backend
mvn compile
mvn exec:java -Dexec.mainClass="nl.topicus.topical.TopicalBackend" -Dexec.args="$DOMAIN $USERNAME $PASSWORD $URL $ROOMS"
