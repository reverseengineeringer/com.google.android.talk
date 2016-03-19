.class final Lgmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgmr;


# instance fields
.field final synthetic a:Lgmn;


# direct methods
.method constructor <init>(Lgmn;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lgmo;->a:Lgmn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lgmq;
    .locals 2

    .prologue
    .line 207
    new-instance v1, Lgmq;

    invoke-direct {v1}, Lgmq;-><init>()V

    .line 208
    sget v0, Laal;->sS:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lgmq;->e:Landroid/widget/ImageView;

    .line 209
    sget v0, Laal;->sM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lgmq;->d:Landroid/widget/TextView;

    .line 210
    return-object v1
.end method
