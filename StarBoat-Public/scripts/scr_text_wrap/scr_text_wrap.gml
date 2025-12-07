// Define a function that takes a string and a character limit as parameters
function scr_text_wrap(arg_str, limit)
{
    // Initialize an empty string to store the wrapped text
    var wrapped = "";
    // Split the string by spaces to get the words
    var words = string_split(arg_str, " ");
    // Initialize a variable to keep track of the current line length
    var line_length = 0;
    // Loop through each word in the words array
    for (var i = 0; i < array_length(words); i++)
	{
        // Get the current word and its length
        var word = words[i];
        var word_length = string_length(word);
        // If the word is longer than the limit, split it into chunks and add #s between them
        if (word_length > limit) 
		{
            var chunks = ceil(word_length / limit);
            for (var j = 0; j < chunks; j++) 
			{
                var start = j * limit + 1;
                var tmp_end = min((j + 1) * limit, word_length);
                var chunk = string_copy(word, start, tmp_end - start + 1);
                wrapped += chunk + "#";
            }
            // Subtract one # from the end of the word
            wrapped = string_copy(wrapped, 1, string_length(wrapped) - 1);
            // Reset the line length
            line_length = 0;
        }
        // Else if the word fits in the current line, add it to the wrapped text
        else if (line_length + word_length <= limit) 
		{
            wrapped += word + " ";
            // Update the line length
            line_length += word_length + 1;
        }
        // Else if the word does not fit in the current line, add a # and start a new line with the word
        else
		{
            wrapped += "#" + word + " ";
            // Update the line length
            line_length = word_length + 1;
        }
    }
    // Return the wrapped text
    return wrapped;
}
