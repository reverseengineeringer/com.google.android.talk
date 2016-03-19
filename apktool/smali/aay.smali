.class public final Laay;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field final a:F

.field final b:F

.field final c:F

.field final synthetic d:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SwitchCompat;FF)V
    .locals 1

    .prologue
    .line 1167
    iput-object p1, p0, Laay;->d:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1168
    iput p2, p0, Laay;->a:F

    .line 1169
    iput p3, p0, Laay;->b:F

    .line 1170
    sub-float v0, p3, p2

    iput v0, p0, Laay;->c:F

    .line 1171
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 1175
    iget-object v0, p0, Laay;->d:Landroid/support/v7/widget/SwitchCompat;

    iget v1, p0, Laay;->a:F

    iget v2, p0, Laay;->c:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 2073
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->a(F)V

    .line 1176
    return-void
.end method
