.class public final Lczf;
.super Lhpj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhpj",
        "<",
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field aj:I

.field ak:Lczi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lhpj;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lczi;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lczf;->ak:Lczi;

    .line 43
    return-void
.end method

.method b(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lczf;->aj:I

    .line 39
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0xb12

    invoke-static {v0}, Laal;->c(I)V

    .line 119
    invoke-virtual {p0}, Lczf;->getActivity()Lba;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->n()V

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lhpj;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 60
    sget v0, Laen;->kc:I

    .line 61
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    sget v2, Laal;->nW:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    sget v0, Laen;->kf:I

    .line 66
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    sget v2, Laal;->nZ:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    const-string v0, "peer2peer"

    .line 1050
    const-string v2, "https://www.google.com/support/hangouts/?hl=%locale%"

    invoke-static {v2, v0}, Laal;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 72
    sget v0, Laen;->kh:I

    .line 73
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 75
    sget v3, Laal;->nY:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 76
    invoke-virtual {p0}, Lczf;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laal;->nU:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 77
    new-instance v3, Lczg;

    invoke-direct {v3, p0, v2}, Lczg;-><init>(Lczf;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v0, Laen;->kb:I

    .line 87
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 89
    sget v2, Laal;->nX:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 91
    sget v2, Laal;->nV:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 92
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 93
    new-instance v2, Lczh;

    invoke-direct {v2, p0}, Lczh;-><init>(Lczf;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-object v1
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lhpj;->onStart()V

    .line 111
    const/16 v0, 0xb10

    invoke-static {v0}, Laal;->c(I)V

    .line 112
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lhpj;->onStop()V

    .line 126
    const/16 v0, 0xb12

    invoke-static {v0}, Laal;->c(I)V

    .line 128
    invoke-virtual {p0}, Lczf;->getActivity()Lba;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->n()V

    .line 129
    return-void
.end method

.method protected q()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x2

    return v0
.end method

.method protected r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lczf;->getActivity()Lba;

    move-result-object v0

    sget v1, Laal;->oa:I

    invoke-virtual {v0, v1}, Lba;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected s()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic t()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method
