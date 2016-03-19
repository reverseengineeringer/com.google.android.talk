.class public final Ldiu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpw;
.implements Liox;
.implements Lioy;
.implements Lioz;


# static fields
.field static final a:Z


# instance fields
.field b:Z

.field c:[Ldjc;

.field final d:Landroid/os/Handler;

.field e:Landroid/content/Context;

.field f:I

.field g:Lepc;

.field h:Lhaw;

.field final i:Ljava/lang/Runnable;

.field private final j:Leap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lezi;->f:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Ldiu;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Liog;)V
    .locals 3

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ldiu;->d:Landroid/os/Handler;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Ldiu;->f:I

    .line 61
    new-instance v0, Ldiv;

    invoke-direct {v0, p0}, Ldiv;-><init>(Ldiu;)V

    iput-object v0, p0, Ldiu;->j:Leap;

    .line 126
    new-instance v0, Ldiw;

    invoke-direct {v0, p0}, Ldiw;-><init>(Ldiu;)V

    iput-object v0, p0, Ldiu;->i:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Ldiu;->e:Landroid/content/Context;

    .line 84
    const-class v0, Lepc;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepc;

    iput-object v0, p0, Ldiu;->g:Lepc;

    .line 85
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 86
    const-class v0, Lhpu;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0, p0}, Lhpu;->a(Lhpw;)Lhpu;

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [Ldjc;

    const/4 v1, 0x0

    new-instance v2, Ldix;

    .line 1227
    invoke-direct {v2, p0}, Ldix;-><init>(Ldiu;)V

    .line 89
    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ldjb;

    .line 2182
    invoke-direct {v2, p0}, Ldjb;-><init>(Ldiu;)V

    .line 89
    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ldja;

    .line 2250
    invoke-direct {v2, p0}, Ldja;-><init>(Ldiu;)V

    .line 89
    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ldiy;

    .line 2283
    invoke-direct {v2, p0}, Ldiy;-><init>(Ldiu;)V

    .line 89
    aput-object v2, v0, v1

    iput-object v0, p0, Ldiu;->c:[Ldjc;

    .line 96
    return-void
.end method


# virtual methods
.method public a(ZLhpv;Lhpv;II)V
    .locals 2

    .prologue
    .line 116
    iput p5, p0, Ldiu;->f:I

    .line 117
    iget-object v0, p0, Ldiu;->e:Landroid/content/Context;

    const-class v1, Lhba;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    invoke-interface {v0, p5}, Lhba;->a(I)Lhaw;

    move-result-object v0

    iput-object v0, p0, Ldiu;->h:Lhaw;

    .line 118
    invoke-virtual {p0}, Ldiu;->c()V

    .line 119
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldiu;->b:Z

    .line 123
    invoke-virtual {p0}, Ldiu;->c()V

    .line 124
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Ldiu;->i:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 155
    return-void
.end method

.method public s_()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ldiu;->j:Leap;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    .line 101
    invoke-virtual {p0}, Ldiu;->c()V

    .line 102
    return-void
.end method

.method public t_()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ldiu;->j:Leap;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    .line 107
    return-void
.end method
