.class public final Lcms;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Landroid/content/res/ColorStateList;

.field public final g:Landroid/content/res/ColorStateList;

.field public final h:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(IZLjava/lang/String;Ljava/lang/String;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/view/View$OnClickListener;I)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1144
    const-string v1, "Expected condition to be false"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lhbs;->a(III)V

    .line 75
    iput p1, p0, Lcms;->a:I

    .line 76
    iput-boolean p2, p0, Lcms;->b:Z

    .line 77
    iput-object p3, p0, Lcms;->c:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcms;->e:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcms;->f:Landroid/content/res/ColorStateList;

    .line 80
    iput-object p6, p0, Lcms;->g:Landroid/content/res/ColorStateList;

    .line 81
    iput-object p7, p0, Lcms;->h:Landroid/view/View$OnClickListener;

    .line 82
    iput p8, p0, Lcms;->d:I

    .line 83
    return-void
.end method
