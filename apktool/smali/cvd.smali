.class public final Lcvd;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcve;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Lhpu;

.field private final d:Lilh;

.field private final e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Limg;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcvd;->a:Ljava/util/List;

    .line 34
    invoke-virtual {p1}, Limg;->getActivity()Lba;

    move-result-object v0

    iput-object v0, p0, Lcvd;->e:Landroid/app/Activity;

    .line 35
    invoke-virtual {p1}, Limg;->getBinder()Lilh;

    move-result-object v0

    iput-object v0, p0, Lcvd;->d:Lilh;

    .line 36
    iget-object v0, p0, Lcvd;->d:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lcvd;->c:Lhpu;

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 40
    iget-object v0, p0, Lcvd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    iget-object v0, p0, Lcvd;->d:Lilh;

    const-class v1, Lcve;

    invoke-virtual {v0, v1}, Lilh;->c(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 45
    iget-object v1, p0, Lcvd;->c:Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcve;

    .line 50
    invoke-virtual {v0, v4}, Lcve;->a(Lbfd;)V

    .line 51
    invoke-virtual {v0}, Lcve;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    invoke-virtual {v0}, Lcve;->d()I

    move-result v3

    .line 53
    if-eq v3, v1, :cond_0

    if-eq v1, v2, :cond_0

    .line 54
    iget-object v1, p0, Lcvd;->a:Ljava/util/List;

    new-instance v6, Lcvi;

    invoke-direct {v6}, Lcvi;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    iget-object v1, p0, Lcvd;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    :goto_1
    move v1, v0

    .line 59
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcvd;->notifyDataSetChanged()V

    .line 63
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcvd;->b:Z

    if-ne v0, p1, :cond_1

    .line 74
    :cond_0
    return-void

    .line 70
    :cond_1
    iput-boolean p1, p0, Lcvd;->b:Z

    .line 71
    iget-object v0, p0, Lcvd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcve;

    .line 72
    invoke-virtual {v0, p1}, Lcve;->a(Z)V

    goto :goto_0
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcvd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcvd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcvd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcve;

    invoke-virtual {v0}, Lcve;->c()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcvd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcve;

    invoke-virtual {v0}, Lcve;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcvd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcve;

    .line 109
    iget-object v1, p0, Lcvd;->e:Landroid/app/Activity;

    .line 1066
    invoke-virtual {v0}, Lcve;->h()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1067
    if-nez p2, :cond_0

    .line 1068
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laal;->gj:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1071
    :cond_0
    :goto_0
    return-object p2

    .line 1076
    :cond_1
    if-eqz p2, :cond_2

    sget v2, Laen;->gD:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1077
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laal;->gu:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1080
    :cond_3
    invoke-virtual {v0}, Lcve;->i()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1081
    sget v1, Laen;->gD:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcve;->b:Landroid/widget/TextView;

    .line 1082
    iget-object v1, v0, Lcve;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcve;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1083
    sget v1, Laen;->bA:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcve;->c:Landroid/widget/TextView;

    .line 1084
    invoke-virtual {v0}, Lcve;->f()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1085
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1086
    iget-object v2, v0, Lcve;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v1, v0, Lcve;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1091
    :goto_1
    sget v1, Laen;->dn:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcve;->d:Landroid/widget/ImageView;

    .line 1092
    iget-object v1, v0, Lcve;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcve;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1097
    iget-object v1, v0, Lcve;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 1099
    sget v1, Laen;->do:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcve;->e:Landroid/widget/ImageView;

    .line 1102
    iget-object v0, v0, Lcve;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1089
    :cond_4
    iget-object v1, v0, Lcve;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x2

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcvd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcvd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcve;

    invoke-virtual {v0}, Lcve;->g()Z

    move-result v0

    return v0
.end method
