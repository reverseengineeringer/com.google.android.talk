.class final Lcxx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;IZZZ)V
    .locals 6

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-static {p0, p1, p3, p4, v0}, Lcwx;->a(Landroid/content/Context;IZZZ)Lcwx;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 195
    invoke-static/range {v0 .. v5}, Lcxt;->a(Landroid/content/Context;ILcwx;ZZZ)V

    .line 196
    return-void
.end method
