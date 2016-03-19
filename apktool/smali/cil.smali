.class public final Lcil;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcio;


# instance fields
.field private a:Lcim;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RelativeLayout$LayoutParams;Z)V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 32
    sget v1, Laal;->fR:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    sget v1, Laen;->eJ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 35
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    if-eqz p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcil;->setVisibility(I)V

    .line 39
    return-void

    .line 38
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public a(Lcim;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcil;->a:Lcim;

    .line 44
    return-void
.end method

.method public a(Lhkx;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcil;->a:Lcim;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcil;->a:Lcim;

    invoke-virtual {v0, p1}, Lcim;->a(Lhkx;)V

    .line 56
    :cond_0
    return-void
.end method
