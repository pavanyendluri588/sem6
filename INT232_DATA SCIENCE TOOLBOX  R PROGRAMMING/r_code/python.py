response = stub.PostModelOutputs(
    service_pb2.PostModelOutputsRequest(
        model_id="{THE_MODEL_ID}",
        inputs=[
            resources_pb2.Input(
                data=resources_pb2.Data(
                    image=resources_pb2.Image(
                        url="https://samples.clarifai.com/metro-north.jpg"
                    )
                )
            )
        ]
    ),
    metadata=metadata
)
print("Predicted concepts:")
for concept in response.outputs[0].data.concepts:
    print(concept.name + " " + str(concept.value))