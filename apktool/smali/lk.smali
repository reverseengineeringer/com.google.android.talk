.class Llk;
.super Lll;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lll;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 1102
    invoke-direct {p0}, Llk;-><init>()V

    return-void
.end method

.method constructor <init>(BB)V
    .locals 1

    .prologue
    .line 1122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llk;-><init>(C)V

    return-void
.end method

.method constructor <init>(C)V
    .locals 1

    .prologue
    .line 1110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llk;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Z)V
    .locals 1

    .prologue
    .line 1027
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 99
    return-void
.end method
