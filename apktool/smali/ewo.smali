.class public final Lewo;
.super Lav;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lav;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 33
    sget v0, Laal;->rl:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 35
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lewo;->getActivity()Lba;

    move-result-object v0

    sget v3, Laal;->rr:I

    invoke-virtual {v0, v3}, Lba;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0}, Lewo;->getActivity()Lba;

    move-result-object v3

    sget v4, Laal;->rq:I

    invoke-virtual {v3, v4}, Lba;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 39
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 40
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lewo;->getActivity()Lba;

    move-result-object v4

    const v5, 0x1090003

    invoke-direct {v3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    new-instance v2, Lewp;

    invoke-direct {v2, p0}, Lewp;-><init>(Lewo;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    return-object v1
.end method
