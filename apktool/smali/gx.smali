.class public final Lgx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Lhg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1078
    invoke-static {v0}, Lgw;->a(Ljava/util/Locale;)Z

    move-result v0

    .line 1165
    iput-boolean v0, p0, Lgx;->a:Z

    .line 2078
    sget-object v0, Lgw;->a:Lhg;

    .line 1166
    iput-object v0, p0, Lgx;->c:Lhg;

    .line 1167
    const/4 v0, 0x2

    iput v0, p0, Lgx;->b:I

    .line 139
    return-void
.end method


# virtual methods
.method public a()Lgw;
    .locals 4

    .prologue
    .line 203
    iget v0, p0, Lgx;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lgx;->c:Lhg;

    .line 3078
    sget-object v1, Lgw;->a:Lhg;

    .line 203
    if-ne v0, v1, :cond_1

    .line 205
    iget-boolean v0, p0, Lgx;->a:Z

    .line 3196
    if-eqz v0, :cond_0

    .line 4078
    sget-object v0, Lgw;->c:Lgw;

    .line 3196
    :goto_0
    return-object v0

    .line 5078
    :cond_0
    sget-object v0, Lgw;->b:Lgw;

    goto :goto_0

    .line 207
    :cond_1
    new-instance v0, Lgw;

    iget-boolean v1, p0, Lgx;->a:Z

    iget v2, p0, Lgx;->b:I

    iget-object v3, p0, Lgx;->c:Lhg;

    .line 6078
    invoke-direct {v0, v1, v2, v3}, Lgw;-><init>(ZILhg;)V

    goto :goto_0
.end method
