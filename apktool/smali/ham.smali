.class public final Lham;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lhav;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lhav;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lhav;

    invoke-direct {v0}, Lhav;-><init>()V

    sput-object v0, Lham;->a:Lhav;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lham;->a:Lhav;

    invoke-direct {p0, p1, v0}, Lham;-><init>(Ljava/lang/String;Lhav;)V

    .line 17
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lhav;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lham;-><init>(Ljava/lang/String;Lhav;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lhav;I)V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lham;->b:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lham;->c:Lhav;

    .line 26
    iput p3, p0, Lham;->d:I

    .line 28
    invoke-static {p1}, Lidd;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "baseUrl is not a fife Url: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lhav;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lham;->c:Lhav;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lham;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    instance-of v1, p1, Lham;

    if-eqz v1, :cond_0

    .line 49
    check-cast p1, Lham;

    .line 50
    iget-object v1, p0, Lham;->c:Lhav;

    iget-object v2, p1, Lham;->c:Lhav;

    invoke-virtual {v1, v2}, Lhav;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lham;->b:Ljava/lang/String;

    iget-object v2, p1, Lham;->b:Ljava/lang/String;

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 53
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lham;->c:Lhav;

    invoke-virtual {v0}, Lhav;->hashCode()I

    move-result v0

    .line 59
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lham;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 65
    const-string v0, "FifeModel{baseUrl=\'"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lham;->b:Ljava/lang/String;

    iget-object v2, p0, Lham;->c:Lhav;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', fifeUrlOptions="

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
