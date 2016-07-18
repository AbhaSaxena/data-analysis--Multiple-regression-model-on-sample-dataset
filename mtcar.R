input <- mtcars[,c("mpg","disp","hp","wt")]

#displaying the first 6 data items
print(head(input))

# Create the relationship model.
model <- lm(mpg~disp+hp+wt, data = input)

# Show the model.
print(model)

# Get the Intercept and coefficients as vector elements.

a <- coef(model)[1]
print(a)

Xdisp <- coef(model)[2]
Xhp <- coef(model)[3]
Xwt <- coef(model)[4]

print(Xdisp)
print(Xhp)
print(Xwt)

#predicting mileage for a car with disp=221, hp=102, wt=2.91 
Y <- 37.15+ Xdisp*221+ Xhp*102+ Xwt*2.91p
print(Y)