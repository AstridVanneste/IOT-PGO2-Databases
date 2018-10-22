connection = new Mongo();

db = connection.getDB("Votes");

db.createCollection("Votes",
{
    validator:
    {
        bsonType:"object",
        properties:
        {
            timestamp:
            {
                bsonType: "string",
                description: "Time when the vote was made"
            },

            value:
            {
                bsonType: "int",
                description: "+1 for upvote, -1 for downvote"
            },

            username:
            {
                bsonType: "string",
                description: "username of the user"
            },

            uid:
            {
                bsonType: "string",
                description: "id of the user"
            },

            songid:
            {
                bsonType: "int",
                description: "id of the song"
            }
        },
        required: ["timestamp", "value", "username", "uid", "songid"]
    }
});
