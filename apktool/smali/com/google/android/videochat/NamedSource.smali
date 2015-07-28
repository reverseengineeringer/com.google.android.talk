.class public Lcom/google/android/videochat/NamedSource;
.super Ljava/lang/Object;
.source "NamedSource.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final nick:Ljava/lang/String;

.field public final removed:Z

.field public final ssrc:I

.field public final ssrcSet:Z

.field public final usage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "usage"    # Ljava/lang/String;
    .param p4, "ssrc"    # I
    .param p5, "ssrcSet"    # Z
    .param p6, "removed"    # Z

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/videochat/NamedSource;->nick:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/google/android/videochat/NamedSource;->name:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/google/android/videochat/NamedSource;->usage:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/google/android/videochat/NamedSource;->ssrc:I

    .line 25
    iput-boolean p5, p0, Lcom/google/android/videochat/NamedSource;->ssrcSet:Z

    .line 26
    iput-boolean p6, p0, Lcom/google/android/videochat/NamedSource;->removed:Z

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/android/videochat/NamedSource;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/videochat/NamedSource;

    .end local p1    # "other":Ljava/lang/Object;
    iget v0, p1, Lcom/google/android/videochat/NamedSource;->ssrc:I

    iget v1, p0, Lcom/google/android/videochat/NamedSource;->ssrc:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/videochat/NamedSource;->ssrc:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/videochat/NamedSource;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/videochat/NamedSource;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/videochat/NamedSource;->ssrc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
