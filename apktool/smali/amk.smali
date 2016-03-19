.class final Lamk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lamp;


# instance fields
.field a:I

.field private final b:Laml;

.field private c:Ljava/lang/Class;


# direct methods
.method constructor <init>(Laml;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lamk;->b:Laml;

    .line 219
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0, p0}, Laml;->a(Lamp;)V

    .line 243
    return-void
.end method

.method a(ILjava/lang/Class;)V
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lamk;->a:I

    .line 223
    iput-object p2, p0, Lamk;->c:Ljava/lang/Class;

    .line 224
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 228
    instance-of v1, p1, Lamk;

    if-eqz v1, :cond_0

    .line 229
    check-cast p1, Lamk;

    .line 230
    iget v1, p0, Lamk;->a:I

    iget v2, p1, Lamk;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lamk;->c:Ljava/lang/Class;

    iget-object v2, p1, Lamk;->c:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 232
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lamk;->a:I

    .line 248
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lamk;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamk;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 249
    return v0

    .line 248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 237
    const-string v0, "Key{size="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lamk;->a:I

    iget-object v2, p0, Lamk;->c:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
