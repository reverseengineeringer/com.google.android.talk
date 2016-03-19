.class public Ldni;
.super Ldnh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 496
    invoke-direct {p0}, Ldnh;-><init>()V

    .line 497
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1144
    const-string v1, "Expected condition to be false"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 498
    iput-object p1, p0, Ldni;->a:Ljava/lang/String;

    .line 499
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 504
    new-instance v0, Llom;

    invoke-direct {v0}, Llom;-><init>()V

    .line 505
    new-instance v1, Llmo;

    invoke-direct {v1}, Llmo;-><init>()V

    .line 506
    iget-object v2, p0, Ldni;->a:Ljava/lang/String;

    iput-object v2, v1, Llmo;->a:Ljava/lang/String;

    .line 507
    new-instance v2, Llol;

    invoke-direct {v2}, Llol;-><init>()V

    .line 508
    new-array v3, v5, [Llmo;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iput-object v3, v2, Llol;->a:[Llmo;

    .line 509
    iput-object v2, v0, Llom;->a:Llol;

    .line 511
    new-instance v1, Llhr;

    invoke-direct {v1}, Llhr;-><init>()V

    .line 512
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Llhr;->a:Ljava/lang/Boolean;

    .line 513
    new-instance v2, Llhq;

    invoke-direct {v2}, Llhq;-><init>()V

    .line 514
    iput-object v1, v2, Llhq;->b:Llhr;

    .line 515
    new-instance v1, Llhp;

    invoke-direct {v1}, Llhp;-><init>()V

    .line 516
    iput-object v2, v1, Llhp;->b:Llhq;

    .line 517
    new-instance v2, Llnd;

    invoke-direct {v2}, Llnd;-><init>()V

    .line 518
    iput-object v1, v2, Llnd;->d:Llhp;

    .line 519
    new-instance v1, Llnf;

    invoke-direct {v1}, Llnf;-><init>()V

    .line 520
    iput-object v2, v1, Llnf;->c:Llnd;

    .line 521
    iput-object v1, v0, Llom;->b:Llnf;

    .line 524
    new-instance v1, Liyr;

    invoke-direct {v1}, Liyr;-><init>()V

    .line 526
    iput-object v0, v1, Liyr;->a:Llom;

    .line 527
    return-object v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    const-string v0, "readitemsbyid"

    return-object v0
.end method
