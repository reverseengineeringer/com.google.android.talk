.class public Llwa;
.super Llvg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Llvy",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Llwa",
        "<TMessageType;TBuilderType;>;>",
        "Llvg",
        "<TBuilderType;>;"
    }
.end annotation


# instance fields
.field public a:Llvy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public b:Z

.field private final c:Llvy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5187
    sget-object v0, Lmfh;->f:Lmfh;

    .line 4681
    invoke-direct {p0, v0}, Llwa;-><init>(Llvy;)V

    .line 4682
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 13672
    sget-object v0, Lmfj;->d:Lmfj;

    .line 12813
    invoke-direct {p0, v0}, Llwa;-><init>(Llvy;)V

    .line 12814
    return-void
.end method

.method public constructor <init>(C)V
    .locals 1

    .prologue
    .line 14812
    sget-object v0, Lmfk;->d:Lmfk;

    .line 14040
    invoke-direct {p0, v0}, Llwa;-><init>(Llvy;)V

    .line 14041
    return-void
.end method

.method public constructor <init>(Llvy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0}, Llvg;-><init>()V

    .line 219
    iput-object p1, p0, Llwa;->c:Llvy;

    .line 220
    sget v0, Llwe;->e:I

    invoke-virtual {p1, v0}, Llvy;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llvy;

    iput-object v0, p0, Llwa;->a:Llvy;

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Llwa;->b:Z

    .line 222
    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    .prologue
    .line 16508
    sget-object v0, Lmfi;->d:Lmfi;

    .line 15611
    invoke-direct {p0, v0}, Llwa;-><init>(Llvy;)V

    .line 15612
    return-void
.end method


# virtual methods
.method public synthetic a()Llvg;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Llwa;->c()Llwa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Llvp;Llvt;)Llvg;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0, p1, p2}, Llwa;->c(Llvp;Llvt;)Llwa;

    move-result-object v0

    return-object v0
.end method

.method public a(D)Llwa;
    .locals 1

    .prologue
    .line 10950
    invoke-virtual {p0}, Llwa;->b()V

    .line 10951
    iget-object v0, p0, Llwa;->a:Llvy;

    check-cast v0, Lmfh;

    .line 11187
    invoke-virtual {v0, p1, p2}, Lmfh;->a(D)V

    .line 10952
    return-object p0
.end method

.method public a(J)Llwa;
    .locals 1

    .prologue
    .line 5701
    invoke-virtual {p0}, Llwa;->b()V

    .line 5702
    iget-object v0, p0, Llwa;->a:Llvy;

    check-cast v0, Lmfh;

    .line 6187
    invoke-virtual {v0, p1, p2}, Lmfh;->a(J)V

    .line 5703
    return-object p0
.end method

.method public a(Ljava/lang/String;)Llwa;
    .locals 2

    .prologue
    .line 8912
    invoke-virtual {p0}, Llwa;->b()V

    .line 8913
    iget-object v0, p0, Llwa;->a:Llvy;

    check-cast v0, Lmfh;

    .line 10074
    if-nez p1, :cond_0

    .line 10075
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10077
    :cond_0
    iget v1, v0, Lmfh;->d:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lmfh;->d:I

    .line 10078
    iput-object p1, v0, Lmfh;->e:Ljava/lang/String;

    .line 8914
    return-object p0
.end method

.method public a(Llvy;)Llwa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Llwa;->b()V

    .line 282
    iget-object v0, p0, Llwa;->a:Llvy;

    sget v1, Llwe;->c:I

    invoke-virtual {v0, v1, p1}, Llvy;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-object p0
.end method

.method public b(D)Llwa;
    .locals 1

    .prologue
    .line 11979
    invoke-virtual {p0}, Llwa;->b()V

    .line 11980
    iget-object v0, p0, Llwa;->a:Llvy;

    check-cast v0, Lmfh;

    .line 12187
    invoke-virtual {v0, p1, p2}, Lmfh;->b(D)V

    .line 11981
    return-object p0
.end method

.method public b(J)Llwa;
    .locals 1

    .prologue
    .line 6730
    invoke-virtual {p0}, Llwa;->b()V

    .line 6731
    iget-object v0, p0, Llwa;->a:Llvy;

    check-cast v0, Lmfh;

    .line 7187
    invoke-virtual {v0, p1, p2}, Lmfh;->b(J)V

    .line 6732
    return-object p0
.end method

.method public synthetic b(Llvp;Llvt;)Llwq;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0, p1, p2}, Llwa;->c(Llvp;Llvt;)Llwa;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 229
    iget-boolean v0, p0, Llwa;->b:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Llwa;->a:Llvy;

    sget v1, Llwe;->e:I

    invoke-virtual {v0, v1}, Llvy;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llvy;

    .line 231
    sget v1, Llwe;->c:I

    iget-object v2, p0, Llwa;->a:Llvy;

    invoke-virtual {v0, v1, v2}, Llvy;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 232
    iput-object v0, p0, Llwa;->a:Llvy;

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Llwa;->b:Z

    .line 235
    :cond_0
    return-void
.end method

.method public c()Llwa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Llwa;->g()Llvy;

    move-result-object v0

    invoke-virtual {v0}, Llvy;->d()Llwa;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Llwa;->d()Llvy;

    move-result-object v1

    invoke-virtual {v0, v1}, Llwa;->a(Llvy;)Llwa;

    .line 254
    return-object v0
.end method

.method public c(J)Llwa;
    .locals 1

    .prologue
    .line 7759
    invoke-virtual {p0}, Llwa;->b()V

    .line 7760
    iget-object v0, p0, Llwa;->a:Llvy;

    check-cast v0, Lmfh;

    .line 8187
    invoke-virtual {v0, p1, p2}, Lmfh;->c(J)V

    .line 7761
    return-object p0
.end method

.method public c(Llvp;Llvt;)Llwa;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvp;",
            "Llvt;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 294
    const/4 v2, 0x0

    .line 297
    :try_start_0
    invoke-virtual {p0}, Llwa;->g()Llvy;

    move-result-object v0

    invoke-virtual {v0}, Llvy;->c()Llwt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Llwt;->a(Llvp;Llvt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llvy;
    :try_end_0
    .catch Llwk; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 303
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0, v0}, Llwa;->a(Llvy;)Llwa;

    .line 307
    :cond_0
    return-object p0

    .line 299
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 300
    :try_start_1
    invoke-virtual {v1}, Llwk;->a()Llwp;

    move-result-object v0

    check-cast v0, Llvy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {p0, v1}, Llwa;->a(Llvy;)Llwa;

    :cond_1
    throw v0

    .line 303
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Llwa;->c()Llwa;

    move-result-object v0

    return-object v0
.end method

.method public d()Llvy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .prologue
    .line 259
    iget-boolean v0, p0, Llwa;->b:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Llwa;->a:Llvy;

    .line 267
    :goto_0
    return-object v0

    .line 263
    :cond_0
    iget-object v0, p0, Llwa;->a:Llvy;

    sget v1, Llwe;->d:I

    invoke-virtual {v0, v1}, Llvy;->a(I)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Llwa;->a:Llvy;

    iget-object v0, v0, Llvy;->b:Llxf;

    invoke-virtual {v0}, Llxf;->a()V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Llwa;->b:Z

    .line 267
    iget-object v0, p0, Llwa;->a:Llvy;

    goto :goto_0
.end method

.method public final e()Llvy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0}, Llwa;->d()Llvy;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Llvy;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4299
    new-instance v0, Llxe;

    invoke-direct {v0}, Llxe;-><init>()V

    .line 274
    throw v0

    .line 276
    :cond_0
    return-object v0
.end method

.method public final f()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 239
    iget-object v1, p0, Llwa;->a:Llvy;

    .line 4168
    sget v2, Llwe;->a:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Llvy;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public g()Llvy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Llwa;->c:Llvy;

    return-object v0
.end method

.method public synthetic h()Llwp;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Llwa;->d()Llvy;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Llwp;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Llwa;->e()Llvy;

    move-result-object v0

    return-object v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 5695
    iget-object v0, p0, Llwa;->a:Llvy;

    check-cast v0, Lmfh;

    invoke-virtual {v0}, Lmfh;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8898
    iget-object v0, p0, Llwa;->a:Llvy;

    check-cast v0, Lmfh;

    invoke-virtual {v0}, Lmfh;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
