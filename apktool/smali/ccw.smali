.class public final Lccw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Z

.field public final f:I

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lccw;->a:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lccw;->b:Ljava/lang/String;

    .line 79
    iput-boolean p3, p0, Lccw;->c:Z

    .line 80
    iput-boolean p4, p0, Lccw;->d:Z

    .line 81
    iput p5, p0, Lccw;->f:I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lccw;->g:Landroid/view/View;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccw;->e:Z

    .line 84
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lccw;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lccw;->g:Landroid/view/View;

    iget-boolean v1, p0, Lccw;->e:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    iget-object v1, p0, Lccw;->g:Landroid/view/View;

    iget-boolean v0, p0, Lccw;->e:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 98
    :cond_0
    return-void

    .line 96
    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lccw;->e:Z

    .line 88
    invoke-virtual {p0}, Lccw;->a()V

    .line 89
    return-void
.end method
