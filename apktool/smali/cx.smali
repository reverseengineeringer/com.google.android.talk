.class public final Lcx;
.super Ldk;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1703
    invoke-direct {p0}, Ldk;-><init>()V

    .line 1704
    return-void
.end method

.method public constructor <init>(Lcy;)V
    .locals 0

    .prologue
    .line 1706
    invoke-direct {p0}, Ldk;-><init>()V

    .line 1707
    invoke-virtual {p0, p1}, Lcx;->a(Lcy;)V

    .line 1708
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Lcx;
    .locals 1

    .prologue
    .line 1723
    invoke-static {p1}, Lcy;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcx;->f:Ljava/lang/CharSequence;

    .line 1724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcx;->g:Z

    .line 1725
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcx;
    .locals 1

    .prologue
    .line 1733
    invoke-static {p1}, Lcy;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcx;->a:Ljava/lang/CharSequence;

    .line 1734
    return-object p0
.end method
