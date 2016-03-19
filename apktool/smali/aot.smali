.class public Laot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laiw;


# instance fields
.field private final b:Laou;

.field private final c:Ljava/net/URL;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/net/URL;

.field private volatile g:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Laou;->b:Laou;

    invoke-direct {p0, p1, v0}, Laot;-><init>(Ljava/lang/String;Laou;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Laou;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Laot;->c:Ljava/net/URL;

    .line 56
    invoke-static {p1}, Laal;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laot;->d:Ljava/lang/String;

    .line 3023
    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    check-cast v0, Laou;

    iput-object v0, p0, Laot;->b:Laou;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Laou;->b:Laou;

    invoke-direct {p0, p1, v0}, Laot;-><init>(Ljava/net/URL;Laou;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Laou;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    check-cast v0, Ljava/net/URL;

    iput-object v0, p0, Laot;->c:Ljava/net/URL;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Laot;->d:Ljava/lang/String;

    .line 2023
    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Laou;

    iput-object v0, p0, Laot;->b:Laou;

    .line 52
    return-void
.end method


# virtual methods
.method public a()Ljava/net/URL;
    .locals 3

    .prologue
    .line 3069
    iget-object v0, p0, Laot;->f:Ljava/net/URL;

    if-nez v0, :cond_2

    .line 3070
    new-instance v1, Ljava/net/URL;

    .line 3086
    iget-object v0, p0, Laot;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3087
    iget-object v0, p0, Laot;->d:Ljava/lang/String;

    .line 3088
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3089
    iget-object v0, p0, Laot;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3091
    :cond_0
    const-string v2, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {v0, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laot;->e:Ljava/lang/String;

    .line 3093
    :cond_1
    iget-object v0, p0, Laot;->e:Ljava/lang/String;

    .line 3070
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Laot;->f:Ljava/net/URL;

    .line 3072
    :cond_2
    iget-object v0, p0, Laot;->f:Ljava/net/URL;

    .line 61
    return-object v0
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 2

    .prologue
    .line 3126
    iget-object v0, p0, Laot;->g:[B

    if-nez v0, :cond_0

    .line 3127
    invoke-virtual {p0}, Laot;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Laot;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Laot;->g:[B

    .line 3129
    :cond_0
    iget-object v0, p0, Laot;->g:[B

    .line 122
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 123
    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Laot;->b:Laou;

    invoke-interface {v0}, Laou;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Laot;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laot;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laot;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 134
    instance-of v1, p1, Laot;

    if-eqz v1, :cond_0

    .line 135
    check-cast p1, Laot;

    .line 136
    invoke-virtual {p0}, Laot;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Laot;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laot;->b:Laou;

    iget-object v2, p1, Laot;->b:Laou;

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 139
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Laot;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Laot;->b:Laou;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Laot;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
