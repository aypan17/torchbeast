NAME=$1
FUEL=$2
WIDTH=$3
DEPTH=$4

python -m torchbeast.monobeast \
        --env RiverraidNoFrameskip-v4 \
        --mode test_render \
        --savedir "./runs" \
        --num_episodes 1 \
        --xpid ${NAME} \
        --hidden_size ${WIDTH} \
        --num_layers ${DEPTH} \
        --fuel_multiplier ${FUEL}
