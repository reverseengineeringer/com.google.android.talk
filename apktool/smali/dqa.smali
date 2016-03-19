.class public Ldqa;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2377
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 2378
    iput-object p1, p0, Ldqa;->a:Ljava/lang/String;

    .line 2379
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2412
    const-string v0, "ui_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 2388
    new-instance v6, Lkfq;

    invoke-direct {v6}, Lkfq;-><init>()V

    .line 2391
    const/4 v0, 0x0

    iget-object v5, p0, Ldqa;->h:Lfak;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Ldon;->a(Ljxk;ZLjava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v6, Lkfq;->requestHeader:Lkdo;

    .line 2394
    iget-object v0, p0, Ldqa;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2395
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    .line 2396
    iget-object v2, p0, Ldqa;->a:Ljava/lang/String;

    iput-object v2, v0, Lkcr;->b:Ljava/lang/String;

    .line 2398
    new-array v1, v1, [Lkcr;

    iput-object v1, v6, Lkfq;->a:[Lkcr;

    .line 2399
    iget-object v1, v6, Lkfq;->a:[Lkcr;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2402
    :cond_0
    return-object v6
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2407
    const-string v0, "contacts/undismisssuggestedcontacts"

    return-object v0
.end method
