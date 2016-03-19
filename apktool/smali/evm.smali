.class public final Levm;
.super Lav;
.source "SourceFile"


# instance fields
.field a:Leut;

.field b:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lav;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 101
    sget v0, Laal;->rg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    invoke-static {p0}, Levm;->b(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    return-void

    .line 102
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Levm;->b:[I

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Levm;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 90
    invoke-virtual {p0}, Levm;->getActivity()Lba;

    move-result-object v2

    iget-object v3, p0, Levm;->b:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Ldvd;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-object v1
.end method

.method static b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 106
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 107
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0}, Levm;->getActivity()Lba;

    move-result-object v0

    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    iput-object v0, p0, Levm;->a:Leut;

    .line 41
    invoke-static {}, Leut;->a()[I

    move-result-object v0

    iput-object v0, p0, Levm;->b:[I

    .line 43
    sget v0, Laal;->rh:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 45
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 46
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Levm;->getActivity()Lba;

    move-result-object v4

    sget v5, Laal;->rj:I

    .line 47
    invoke-direct {p0}, Levm;->a()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    iget-object v3, p0, Levm;->a:Leut;

    invoke-virtual {v3}, Leut;->b()I

    move-result v3

    .line 50
    :goto_0
    iget-object v4, p0, Levm;->b:[I

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 51
    iget-object v4, p0, Levm;->b:[I

    aget v4, v4, v1

    if-ne v4, v3, :cond_1

    .line 52
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 57
    :cond_0
    new-instance v1, Levn;

    invoke-direct {v1, p0}, Levn;-><init>(Levm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    sget v0, Laal;->rg:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 65
    invoke-virtual {p0}, Levm;->getActivity()Lba;

    move-result-object v1

    sget v3, Laal;->rm:I

    invoke-virtual {v1, v3}, Lba;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v1, Levo;

    invoke-direct {v1, p0}, Levo;-><init>(Levm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-static {v2}, Levm;->a(Landroid/view/View;)V

    .line 76
    sget v0, Laal;->rf:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 77
    new-instance v1, Levp;

    invoke-direct {v1, p0}, Levp;-><init>(Levm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-object v2

    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
