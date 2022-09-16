version 1.0

workflow SecondStage {
  meta {
    description: "Second Stage"
  }
  input {
    String docker
		Int NUM_THREAD
		Int MEMORY
		Int DISK
  }
}