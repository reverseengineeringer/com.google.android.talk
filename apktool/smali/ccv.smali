.class public final Lccv;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lccw;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lccw;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 108
    iput-object p1, p0, Lccv;->c:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lccv;->a:Ljava/util/List;

    .line 110
    iput-object p3, p0, Lccv;->b:Landroid/view/View$OnClickListener;

    .line 111
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lccv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lccv;->a:Ljava/util/List;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 160
    neg-int v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 115
    iget-object v0, p0, Lccv;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccw;

    .line 117
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Laen;->bo:I

    if-ne v1, v2, :cond_0

    .line 124
    :goto_0
    iput-object p2, v0, Lccw;->g:Landroid/view/View;

    .line 125
    sget v1, Laen;->gM:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 126
    sget v2, Laen;->gy:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 127
    sget v3, Laen;->gz:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/SwitchCompat;

    .line 128
    iget-object v4, v0, Lccw;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, v0, Lccw;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    const-string v1, ""

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_1
    iget-boolean v1, v0, Lccw;->c:Z

    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 138
    iget-boolean v1, v0, Lccw;->d:Z

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 142
    :goto_2
    invoke-virtual {v0}, Lccw;->a()V

    .line 143
    iget v0, v0, Lccw;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lccv;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-object p2

    .line 120
    :cond_0
    iget-object v1, p0, Lccv;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laal;->fn:I

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 122
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lezc;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, v0, Lccw;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {v3, v6}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    goto :goto_2
.end method
