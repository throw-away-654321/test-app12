export COMMIT=$(git rev-parse HEAD); echo "{\"commitHash\": \"${COMMIT}\"}" > metadata.json
java -jar /Users/jcava/Documents/workspace/insight/insight-brain/nexus-iq-cli/target/nexus-iq-cli-1.69.0-SNAPSHOT.jar -i test-app -s http://localhost:8070 -a admin:admin123 -t release -m metadata.json ./target/lib
