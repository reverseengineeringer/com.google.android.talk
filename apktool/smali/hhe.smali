.class public final Lhhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbl;


# static fields
.field static final a:J


# instance fields
.field final b:Landroid/content/Context;

.field final c:Lhgv;

.field d:Lhca;

.field e:Lhku;

.field f:Ljxm;

.field g:Ljxj;

.field h:Lmdx;

.field i:Lhhg;

.field j:Ljava/lang/String;

.field private final k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x37

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lhhe;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhgv;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lhhf;

    invoke-direct {v0, p0}, Lhhf;-><init>(Lhhe;)V

    iput-object v0, p0, Lhhe;->k:Ljava/lang/Runnable;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhhe;->b:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lhhe;->c:Lhgv;

    .line 80
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lhhe;->k:Ljava/lang/Runnable;

    .line 1089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iget-object v0, p0, Lhhe;->i:Lhhg;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lhhe;->i:Lhhg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhhg;->cancel(Z)Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lhhe;->i:Lhhg;

    .line 89
    :cond_0
    return-void
.end method

.method public a(Lhca;Lhku;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lhhe;->d:Lhca;

    .line 103
    iput-object p2, p0, Lhhe;->e:Lhku;

    .line 104
    iget-object v0, p0, Lhhe;->k:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 105
    return-void
.end method

.method public a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Llyi;",
            ">(",
            "Ljava/lang/String;",
            "Llyi;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lhbp",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    const/16 v5, 0x4e20

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lhhe;->a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;II)V

    .line 127
    return-void
.end method

.method public a(Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Llyi;",
            ">(I)V"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v1, Lhhh;

    .line 1139
    const-wide/16 v8, 0x3e8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lhhh;-><init>(Lhhe;Ljava/lang/String;Llyi;Ljava/lang/Class;Lhbp;IJI)V

    .line 135
    invoke-static {v1}, Laal;->a(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public a(Ljxj;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lhhe;->g:Ljxj;

    .line 115
    return-void
.end method

.method public a(Ljxm;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lhhe;->f:Ljxm;

    .line 110
    return-void
.end method

.method public a(Lmdx;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lhhe;->h:Lmdx;

    .line 120
    return-void
.end method
