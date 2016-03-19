.class final Lams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lamp;


# instance fields
.field a:I

.field private final b:Lamt;

.field private c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lamt;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lams;->b:Lamt;

    .line 188
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lams;->b:Lamt;

    invoke-virtual {v0, p0}, Lamt;->a(Lamp;)V

    .line 204
    return-void
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 197
    iput p1, p0, Lams;->a:I

    .line 198
    iput-object p2, p0, Lams;->c:Landroid/graphics/Bitmap$Config;

    .line 199
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 213
    instance-of v1, p1, Lams;

    if-eqz v1, :cond_0

    .line 214
    check-cast p1, Lams;

    .line 215
    iget v1, p0, Lams;->a:I

    iget v2, p1, Lams;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lams;->c:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lams;->c:Landroid/graphics/Bitmap$Config;

    .line 216
    invoke-static {v1, v2}, Lavq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 218
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lams;->a:I

    .line 224
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lams;->c:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lams;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 225
    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lams;->a:I

    iget-object v1, p0, Lams;->c:Landroid/graphics/Bitmap$Config;

    .line 1027
    invoke-static {v0, v1}, Lamq;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    .line 208
    return-object v0
.end method
