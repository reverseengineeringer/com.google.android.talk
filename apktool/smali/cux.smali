.class public final Lcux;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgmr;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lcux;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lgmq;
    .locals 2

    .prologue
    .line 732
    new-instance v1, Lcuy;

    .line 1981
    invoke-direct {v1}, Lcuy;-><init>()V

    .line 733
    iput-object p1, v1, Lcuy;->a:Landroid/view/View;

    .line 734
    sget v0, Laen;->az:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcuy;->e:Landroid/widget/ImageView;

    .line 735
    sget v0, Laen;->aj:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcuy;->d:Landroid/widget/TextView;

    .line 736
    sget v0, Laen;->gi:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcuy;->b:Landroid/widget/ImageView;

    .line 737
    sget v0, Laen;->aD:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcuy;->c:Landroid/widget/ImageView;

    .line 738
    return-object v1
.end method
