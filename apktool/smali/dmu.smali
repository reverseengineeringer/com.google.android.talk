.class public Ldmu;
.super Ldmt;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ldmt;-><init>()V

    .line 298
    iput-object p1, p0, Ldmu;->a:Ljava/lang/String;

    .line 299
    iput-object p2, p0, Ldmu;->b:Ljava/lang/String;

    .line 300
    iput-object p3, p0, Ldmu;->c:Ljava/lang/String;

    .line 301
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 6

    .prologue
    .line 306
    new-instance v0, Lmgp;

    invoke-direct {v0}, Lmgp;-><init>()V

    .line 307
    new-instance v1, Lmgr;

    invoke-direct {v1}, Lmgr;-><init>()V

    iput-object v1, v0, Lmgp;->d:Lmgr;

    .line 308
    iget-object v1, v0, Lmgp;->d:Lmgr;

    iget-object v2, p0, Ldmu;->a:Ljava/lang/String;

    iput-object v2, v1, Lmgr;->a:Ljava/lang/String;

    .line 309
    iget-object v1, v0, Lmgp;->d:Lmgr;

    iget-object v2, p0, Ldmu;->b:Ljava/lang/String;

    iput-object v2, v1, Lmgr;->b:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Ldmu;->a:Ljava/lang/String;

    iget-object v2, p0, Ldmu;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmgp;->a:Ljava/lang/String;

    .line 311
    new-instance v1, Lmgg;

    invoke-direct {v1}, Lmgg;-><init>()V

    iput-object v1, v0, Lmgp;->b:Lmgg;

    .line 312
    iget-object v1, v0, Lmgp;->b:Lmgg;

    iget-object v2, p0, Ldmu;->c:Ljava/lang/String;

    iput-object v2, v1, Lmgg;->a:Ljava/lang/String;

    .line 313
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    const-string v0, "handoffnumbers/add"

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method
