.class public final Lcbj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static c:I

.field static final d:Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcbm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 491
    const/16 v0, 0x10

    sput v0, Lcbj;->c:I

    .line 492
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcbj;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-object p1, p0, Lcbj;->a:Landroid/content/Context;

    .line 536
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcbj;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 537
    new-instance v0, Lcbl;

    .line 1505
    invoke-direct {v0, p0}, Lcbl;-><init>(Lcbj;)V

    .line 537
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcbl;->a([Ljava/lang/Object;)Lhbw;

    .line 538
    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Lcbj;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 582
    :cond_0
    iget-object v0, p0, Lcbj;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcbj;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 585
    iget-object v0, p0, Lcbj;->e:Lcbm;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcbj;->e:Lcbm;

    invoke-interface {v0}, Lcbm;->q_()V

    .line 1541
    :cond_1
    new-instance v0, Lcbk;

    invoke-direct {v0, p0}, Lcbk;-><init>(Lcbj;)V

    invoke-static {v0}, Lhbw;->a(Ljava/lang/Runnable;)V

    .line 589
    return-void
.end method

.method public a(Lcbm;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcbj;->e:Lcbm;

    .line 574
    return-void
.end method
