.class public final Lezg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lios;
.implements Liov;
.implements Lioz;


# static fields
.field private static final d:Z


# instance fields
.field final a:Ljava/lang/String;

.field b:J

.field c:I

.field private final e:Lezh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lezi;->h:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lezg;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Liog;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lezh;

    .line 1054
    invoke-direct {v0, p0}, Lezh;-><init>(Lezg;)V

    .line 23
    iput-object v0, p0, Lezg;->e:Lezh;

    .line 29
    iput-object p1, p0, Lezg;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 31
    return-void
.end method


# virtual methods
.method public X_()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lezg;->d:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lezg;->c()V

    .line 38
    :cond_0
    return-void
.end method

.method public a()V
    .locals 2

    .prologue
    .line 2051
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lezg;->e:Lezh;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 47
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lezg;->e:Lezh;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 42
    return-void
.end method
