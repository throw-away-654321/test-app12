export COMMIT=$(git rev-parse HEAD); echo "{\"commitHash\": \"${COMMIT}\"}" > metadata.json
java -jar /Users/jcava/Downloads/nexus-iq-server-1.68.0-01-bundle/nexus-iq-cli-1.68.0-01.jar -i test-app -s http://localhost:8070 -a admin:admin123 -t release -m metadata.json ./target/lib
