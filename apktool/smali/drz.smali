.class public final Ldrz;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private g:I

.field private h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lkdg;)V
    .locals 4

    .prologue
    .line 1920
    iget-object v0, p1, Lkdg;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 1921
    iget-object v0, p1, Lkdg;->a:Ljava/lang/Integer;

    .line 2043
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1921
    iput v0, p0, Ldrz;->g:I

    .line 1922
    iget-object v0, p1, Lkdg;->b:Ljava/lang/String;

    iput-object v0, p0, Ldrz;->h:Ljava/lang/String;

    .line 1923
    iget-object v0, p1, Lkdg;->c:Ljava/lang/String;

    iput-object v0, p0, Ldrz;->i:Ljava/lang/String;

    .line 2232
    sget-boolean v0, Ldqf;->a:Z

    .line 1924
    if-eqz v0, :cond_0

    .line 1925
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RegisterDeviceResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    :cond_0
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 1931
    new-instance v0, Lkdg;

    invoke-direct {v0}, Lkdg;-><init>()V

    .line 3131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1932
    check-cast v0, Lkdg;

    .line 1933
    iget-object v1, v0, Lkdg;->responseHeader:Lkdp;

    invoke-static {v1}, Ldrz;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1934
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkdg;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 1936
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldrz;

    invoke-direct {v1, v0}, Ldrz;-><init>(Lkdg;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Leff;)V
    .locals 2

    .prologue
    .line 1942
    invoke-super {p0, p1}, Ldqf;->a(Leff;)V

    .line 1944
    iget-object v0, p0, Ldrz;->b:Leff;

    check-cast v0, Ldpj;

    .line 1945
    iget-object v1, v0, Ldpj;->u:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1946
    const/4 v1, 0x2

    iput v1, p0, Ldrz;->g:I

    .line 1947
    iget-object v0, v0, Ldpj;->u:Ljava/lang/String;

    iput-object v0, p0, Ldrz;->h:Ljava/lang/String;

    .line 1949
    :cond_0
    return-void
.end method

.method public k()I
    .locals 1

    .prologue
    .line 1952
    iget-object v0, p0, Ldrz;->b:Leff;

    check-cast v0, Ldpj;

    iget v0, v0, Ldpj;->a:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Ldrz;->b:Leff;

    check-cast v0, Ldpj;

    iget-object v0, v0, Ldpj;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1960
    iget-object v0, p0, Ldrz;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 1964
    iget v0, p0, Ldrz;->g:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1968
    iget-object v0, p0, Ldrz;->h:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 1972
    iget-object v0, p0, Ldrz;->b:Leff;

    check-cast v0, Ldpj;

    iget-boolean v0, v0, Ldpj;->k:Z

    return v0
.end method
