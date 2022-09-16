version 1.0

workflow FirstStage {
  meta {
    description: "First Stage"
  }

  input {
    String docker
		Int NUM_THREAD
		Int MEMORY
		Int DISK
  }

  call FirstStage {
    input: {
      String docker
      Int NUM_THREAD
      Int MEMORY
      Int DISK
    }
  }

  output {
    File output_vcf = FirstStage.output_vcf
  }
}

task FirstStage {
  input {
    String docker
		Int NUM_THREAD
		Int MEMORY
		Int DISK
  }
  command {
    set -e
  }
  runtime {
		docker: "${docker}"
		cpu: "${NUM_THREAD}"
		memory: "${MEMORY} GB"
		disk: "${DISK} GB"
	}
}