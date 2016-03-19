.class public final Ldem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljsg;

.field b:Liey;

.field c:Lhvr;

.field d:Ljth;

.field e:Ljtx;

.field f:Ldlg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljsg;)Ldem;
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Ldem;->a:Ljsg;

    .line 587
    return-object p0
.end method

.method public a()Ldjj;
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Ldem;->a:Ljsg;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Ljava/lang/IllegalStateException;

    const-class v1, Ljsg;

    .line 479
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    iget-object v0, p0, Ldem;->b:Liey;

    if-nez v0, :cond_1

    .line 482
    new-instance v0, Liey;

    invoke-direct {v0}, Liey;-><init>()V

    iput-object v0, p0, Ldem;->b:Liey;

    .line 484
    :cond_1
    iget-object v0, p0, Ldem;->c:Lhvr;

    if-nez v0, :cond_2

    .line 485
    new-instance v0, Lhvr;

    invoke-direct {v0}, Lhvr;-><init>()V

    iput-object v0, p0, Ldem;->c:Lhvr;

    .line 487
    :cond_2
    iget-object v0, p0, Ldem;->d:Ljth;

    if-nez v0, :cond_3

    .line 488
    new-instance v0, Ljth;

    invoke-direct {v0}, Ljth;-><init>()V

    iput-object v0, p0, Ldem;->d:Ljth;

    .line 490
    :cond_3
    iget-object v0, p0, Ldem;->e:Ljtx;

    if-nez v0, :cond_4

    .line 491
    new-instance v0, Ljtx;

    invoke-direct {v0}, Ljtx;-><init>()V

    iput-object v0, p0, Ldem;->e:Ljtx;

    .line 493
    :cond_4
    iget-object v0, p0, Ldem;->f:Ldlg;

    if-nez v0, :cond_5

    .line 494
    new-instance v0, Ldlg;

    invoke-direct {v0}, Ldlg;-><init>()V

    iput-object v0, p0, Ldem;->f:Ldlg;

    .line 496
    :cond_5
    new-instance v0, Ldjj;

    .line 1149
    invoke-direct {v0, p0}, Ldjj;-><init>(Ldem;)V

    .line 496
    return-object v0
.end method
