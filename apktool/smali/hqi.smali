.class public final Lhqi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Z


# direct methods
.method constructor <init>(Lhqj;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget-object v0, p1, Lhqj;->a:Ljava/lang/String;

    iput-object v0, p0, Lhqi;->a:Ljava/lang/String;

    .line 16
    iget v0, p1, Lhqj;->b:I

    iput v0, p0, Lhqi;->b:I

    .line 17
    iget-boolean v0, p1, Lhqj;->c:Z

    iput-boolean v0, p0, Lhqi;->c:Z

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lhqi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lhqi;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lhqi;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 47
    goto :goto_0

    .line 50
    :cond_3
    check-cast p1, Lhqi;

    .line 52
    iget-boolean v2, p0, Lhqi;->c:Z

    iget-boolean v3, p1, Lhqi;->c:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lhqi;->a:Ljava/lang/String;

    iget-object v3, p1, Lhqi;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lhqi;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 58
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lhqi;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 59
    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
