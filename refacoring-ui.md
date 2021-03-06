# Starting from Scratch

## Start with features

When you begin to design, dont make the mistake of starting with the shell.
Dont design the shell or the naviagtion first. Start with an actual feature because
you app is actually a collection of features.

### Details come later

Start with low fidelity mockups. Use a sharpie and leave color and type faces with later. Greyscale is good for now.

### Don't design too much

Design the most basic version of what you are after and then make it real. Solve problems you find with someting real, don't imagine what you need up front.

Assume everything will be super hard to implement. So leave nice to have out till later.

### Choose a personality

Look at the site that are visited by the sorts of people you want to reach but don't copy.

### Limit your choices

Choose from 8 to 10 shades and a limited set of font sizes chosen ahead of time. You can have system for lots of things like
Font size

- Font weight
- Line height
- Color
- Margin
- Padding
- Width
- Height
- Box shadowsLimit your choices
- Border radius
- Border width
- Opacity

# Heirachy

## Not all elements are equal

Signal the relevent importance of elements by de-emphasizing secondary and tertiary elements.

## Size is'nt everything

It would be cruel to expect font size to be soleley responsible for this. Other tools at your disposal are font-weight and background shade and text colour.
Some good content colours would be would:

- Dark colour for primary content
- Grey for secondary content
- Lighter grey for tertiary content

And for font weights:

- Normal of 400/500 for most text
- Empahsize with 600/700

## Don't use grey text on coloured backgrounds

Don't de-emphasize text on a coloured background with grey or opacity. Instead hand pick a colour using the
same hue as the background and adjust the saturations and lightness untill it feels right.

## Empasize by de-emphasizing

Sometimes no matter how you try you cant make an element pop or something else is competing with it. To fix this
you could de-emphasize the other competing items instead of tweaking the element you're trying to hightlight.

## Labels are a last resort

Try to resist the temptation to display key value properties straight from your database. Most of the time it is obvious
what the data is about because of the context or the format or the data e.g \$, @yahoo.co.uk, %. Labels also make it
difficult to create heirarchy. If you really need a label then combine it with the data e.g 'Bedrooms: 2', becomes '3 Bedrooms'.
Use labels where you think the use might be scanning for it such as technical specifications.

## Visual & Document Heirachy

Dont assume that heading that heading tags should stay as they are, use them semantically but style them as you need.

## Weight & Contrast

Weight is how much surface area an element takes up, it could be bold test, an icon or a fat line. Contrast is how so soft
a colour is by adjusting it's lightness. You can adjust each one to compensate for the other.

## Designing actions on a page

1. The primary action should have a solid hight contract background.
2. The secondary action should have an outline style or a lower contrast background
3. Style tertiary actions like links. Don't put them in a box.
4. Delete actions can be secondary or tertiary, place the primary style in the confirmation model.

# Layout & Spacing

You will end up with better results if you start with too much white space and remove it. It's can be fine to have dense
UI's for things like dashboards, but make it a deliberate choice.

## Establishing a sizing system

Instead of fussing over pixel values, make a sizing system where no two values are less that 25% away from each other.
And multiples of a base value. An exponential scale works well where lower values are bunched together.
A good set are 4, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512, 640, 768

# Filling the screen

#

You don't have to do this. Give each elements the amount of space it needs, no more. Dont brek thing only
to make them the same width.

If you're finding it hard to design something small for a larger canvas then shrink the canvas. Sometimes
it's best to break a design into columns if you're sturggling to size something on a big canvas that naturally
looks good on a small canvas.

## The Grid

Don't think that grids are a solution to everything. You don't always need them. Give sidbars a `max-width`
and other elements a fixed width or a `max-width` if that's is their optimal size to stay looking good.
Only shrink them when you need to.

## Don'e use relative sizing 'em'

It doesn't work. When moving fomr a large screen to a small one the larger header must shrink at a faster rate than
the smaller ones and on small screen their sized should be closer to one another. Allow yourself to fine tune
things independantly. Whenever your designing groups, suchs as a list of elements, always make sure there is
more space around the elements than between elements inside it.

# Type

## The scale

For UI deisgn it's better to pick hand crafted values. To stick to a system, do not use `em` units.
The following sizes go well with the spacing sizes above. 12, 14, 16, 18, 20, 24, 30, 36, 48, 60, 72

## The fonts

This is a good failsafe `-apple-system, Segoe UI, Roboto, Noto Sans, Ubuntu, Cantarell, Helvetica Neue;` if you really
want to pick a font, then go to Google fonts, crank the font size up to 10 and select from what is left. These fonts
tend to have been crafted with more care. Remember that talled, closer fonts tend to be for headlines.

## Line lengths & links

Keep your line lengths in check otherwise it is too taxing to read. Keep you line lengths 20-35em in width. Use `em`
because it is relative to your line length. Kepp centext alined on the `baseline`.

Your paragraph width and your line height are proportional. Begin with 1.5 but go as high as 2 for wider paragraphs
until you can read the next line without losing your position. The font size also has a part to play. Larger fonts
can get away with smaller line length. Font size and line height are inversley proportional.

Consider taking away link colours in favour of bold text or on hover underline or other effects.

## Readability & alignments

In English most text should be left aligned. If you really need need to center align then it shouldn't be more than 2/3
short sentences. If it's any longer than this then left align it.

Right align numbers so the decimal positions are aligned. This make them easier to align. If you use justified text
to give your text a more formal look; set `hyphens: auto` to avoid awkward gaps.

With `letter-spacing` you should normall leave it alone but if you want to use a font that wasn't meant for headlines
as a headlines then you can decrease it to emulate the look of headline fonts.

Increase the letter spacing of ALL CAPS text to improve legibility.

## Working with colour

Always work wit HSL and select a primary, a neutral and some accents. Define a fixed set of shades up front. For your primary and accent, a good rule is to go for a shade that would suite
a button. This is your center shade (500), then the edges and fill in the rest so you have a gradation from dark(900) to light(100).

To avoid getting washed out colour ou could also increase the saturation as the lightness get further away from 50% in either direction;

If the colours are already at 100% saturation. This is where you take advantage of percieved brightness. The three peaks in percived brightness are yellow(60), cyan(180), magenta(300)
and the troughs are red(0) green(120) blue(240). To make a colour seem lighter rotate it 20-30deg
to the nearest peak, and to make it seem darker do the same against the troughs.

You can combine both these methods to get brightness from adjusting lightness and roatating the
hue, but dont rotate the hue by more than 20-30deg.

## Greys

A neutral grey has a saturation of 0%. For a cool grey saturate with a bit of blue. For a warm grey add a bit of yellow or orange. Remember to increase the saturation as you increase the lightness to prevent the colour from looking washed out.

## Accessability

Use [this](https://webaim.org/resources/contrastchecker/) tool if you want to make your sites accesable to all. Sometimes light text on a dark background isn't a greate thing consider using dark text on a light background or with dark backgrounds rotate te hue of the light text colour towards a brighter colour (cyan, magenta, yellow).

# Creating Depth

When creating depth for your elements, remember **remember light comes from above**.

With an rasied element add an inset box shadow on the top with no blur radius, e.e `box-shadow: inset 0 1px 0 hsl(224, 84%, 74%)` and a regular box shadow on the bottom edge with a slight blue radius `box-shadow: 0 1px 3px hsla(0, 0%, 0%, .2);`. In both cases hand pick the colour.

For inset elements give the bottom edge a lighter colour or use an inset shadow. For the top edge give it a darker inset box shadow.

Don't overdo it 😁. Use shadows to convey elevation and grab the users atention. Use a small one for a button, a medium one for something like a drop down and a large one for something like a modal. To make the process easier establish an **elevation system**; 5 should be enough. Start with the smallest and the largest, then pick the middle and fill in the rest. Here is a good set to start with:

- 0 1px 3px hsla(0, 0%, 0%, .2)
- 0 4px 6px hsla(0, 0%, 0%, .2)
- 0 4px 15px hsla(0, 0%, 0%, .2)
- 0 10px 24px hsla(0, 0%, 0%, .2)
- 0 15px 35px hsla(0, 0%, 0%, .2)

Combine them with an interaction to give some motion to a click/drag. You can combine two shadows to make things look more realistic in that one will be the direct light and the other the sharper shadow you get when ambient light cant reach underneath an object. The first will have a greater vertical offset with a larger blur, the second will have a less vertical offset & smaller blur: `box-shadow: 0 4px 6px hsla(), 0 5px 15px hsla()`

You can also create depth in flat colour schemes using colour or solid shadows.
Dark colours look furter away and light colours look closer. You can also create depth by overlapping elements by using negative margins.

## Photos

Use good photos so hire a photographer or but stock photos. Adding text over over an image can be difficult. To help with this add a semi-transparent black or white overlay to an image and then your text over that. Other techniques are to lower the image contrast, colourize the image or add a `text-shadow: 0,0,50px hsla(0, 0%, 0%, .4);`

## Icons

Don't scale up icons, becuase they don't have the details to look good at a larger size. Instead keep them small and enclose them in a coloured shape. Don't scale them down either, better to scale a simplified version of the.

## Screenshots

Don't try to display a shrunk screenshot of your app. It will make people squint. Insead, show a simplified version, or a portion and a shot of it in mobile layout.

## Images

If you have images where their background colours slightly match with the background colour of the container give it an inset box-shadow `box-shadow: inset 0 2px 4px 0 hsla(0,0,0,.2)` or a semi-transparent inner border `box-shadow: inset 0 0 0 1px hsla(0,0,0,.1)`.

If the images are user uploads, show them inside a fixed container and crop out the rest. You can
do this with `background-size: cover`.

# Supercharge the defaults

- lists with customer bulltets
- styles links
- accented borders
- navigations states
- changing the background colour
- gradients with two hues no more than 30deg apart
- repeat patterns
- adding simple shape or illustration
- think about empty states
- use fewer borders
- box shadows/ two different bg colours/ extra spacing
