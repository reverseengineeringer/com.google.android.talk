.class final Lari;
.super Lare;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lare;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)F
    .locals 3

    .prologue
    .line 121
    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 122
    int-to-float v1, p4

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 129
    sget v0, Larl;->b:I

    return v0
.end method
