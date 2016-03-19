.class public final Lqw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Z

.field public C:[Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public H:Landroid/database/Cursor;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public L:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/content/DialogInterface$OnClickListener;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Ljava/lang/CharSequence;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Z

.field public p:Landroid/content/DialogInterface$OnCancelListener;

.field public q:Landroid/content/DialogInterface$OnDismissListener;

.field public r:Landroid/content/DialogInterface$OnKeyListener;

.field public s:[Ljava/lang/CharSequence;

.field public t:Landroid/widget/ListAdapter;

.field public u:Landroid/content/DialogInterface$OnClickListener;

.field public v:I

.field public w:Landroid/view/View;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput v0, p0, Lqw;->c:I

    .line 763
    iput v0, p0, Lqw;->e:I

    .line 786
    iput-boolean v0, p0, Lqw;->B:Z

    .line 790
    const/4 v0, -0x1

    iput v0, p0, Lqw;->F:I

    .line 798
    iput-boolean v1, p0, Lqw;->L:Z

    .line 814
    iput-object p1, p0, Lqw;->a:Landroid/content/Context;

    .line 815
    iput-boolean v1, p0, Lqw;->o:Z

    .line 816
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lqw;->b:Landroid/view/LayoutInflater;

    .line 817
    return-void
.end method


# virtual methods
.method public a(Lqr;)V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 820
    iget-object v0, p0, Lqw;->g:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 821
    iget-object v0, p0, Lqw;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Lqr;->a(Landroid/view/View;)V

    .line 836
    :cond_0
    :goto_0
    iget-object v0, p0, Lqw;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lqw;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lqr;->b(Ljava/lang/CharSequence;)V

    .line 839
    :cond_1
    iget-object v0, p0, Lqw;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 840
    const/4 v0, -0x1

    iget-object v1, p0, Lqw;->i:Ljava/lang/CharSequence;

    iget-object v2, p0, Lqw;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lqr;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 843
    :cond_2
    iget-object v0, p0, Lqw;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 844
    const/4 v0, -0x2

    iget-object v1, p0, Lqw;->k:Ljava/lang/CharSequence;

    iget-object v2, p0, Lqw;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lqr;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 847
    :cond_3
    iget-object v0, p0, Lqw;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 848
    const/4 v0, -0x3

    iget-object v1, p0, Lqw;->m:Ljava/lang/CharSequence;

    iget-object v2, p0, Lqw;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lqr;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 853
    :cond_4
    iget-object v0, p0, Lqw;->s:[Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    iget-object v0, p0, Lqw;->H:Landroid/database/Cursor;

    if-nez v0, :cond_5

    iget-object v0, p0, Lqw;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 1877
    :cond_5
    iget-object v0, p0, Lqw;->b:Landroid/view/LayoutInflater;

    .line 2061
    iget v1, p1, Lqr;->l:I

    .line 1877
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 1880
    iget-boolean v0, p0, Lqw;->D:Z

    if-eqz v0, :cond_10

    .line 1881
    iget-object v0, p0, Lqw;->H:Landroid/database/Cursor;

    if-nez v0, :cond_f

    .line 1882
    new-instance v0, Lqx;

    iget-object v2, p0, Lqw;->a:Landroid/content/Context;

    .line 3061
    iget v3, p1, Lqr;->m:I

    .line 1882
    iget-object v4, p0, Lqw;->s:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lqx;-><init>(Lqw;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 6061
    :goto_1
    iput-object v0, p1, Lqr;->j:Landroid/widget/ListAdapter;

    .line 1950
    iget v0, p0, Lqw;->F:I

    .line 7061
    iput v0, p1, Lqr;->k:I

    .line 1952
    iget-object v0, p0, Lqw;->u:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_14

    .line 1953
    new-instance v0, Lqz;

    invoke-direct {v0, p0, p1}, Lqz;-><init>(Lqw;Lqr;)V

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1976
    :cond_6
    :goto_2
    iget-object v0, p0, Lqw;->K:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_7

    .line 1977
    iget-object v0, p0, Lqw;->K:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1980
    :cond_7
    iget-boolean v0, p0, Lqw;->E:Z

    if-eqz v0, :cond_15

    .line 1981
    invoke-virtual {v5, v12}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 8061
    :cond_8
    :goto_3
    iput-object v5, p1, Lqr;->b:Landroid/widget/ListView;

    .line 856
    :cond_9
    iget-object v0, p0, Lqw;->w:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 857
    iget-boolean v0, p0, Lqw;->B:Z

    if-eqz v0, :cond_16

    .line 858
    iget-object v1, p0, Lqw;->w:Landroid/view/View;

    iget v2, p0, Lqw;->x:I

    iget v3, p0, Lqw;->y:I

    iget v4, p0, Lqw;->z:I

    iget v5, p0, Lqw;->A:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lqr;->a(Landroid/view/View;IIII)V

    .line 874
    :cond_a
    :goto_4
    return-void

    .line 823
    :cond_b
    iget-object v0, p0, Lqw;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    .line 824
    iget-object v0, p0, Lqw;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lqr;->a(Ljava/lang/CharSequence;)V

    .line 826
    :cond_c
    iget-object v0, p0, Lqw;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 827
    iget-object v0, p0, Lqw;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lqr;->a(Landroid/graphics/drawable/Drawable;)V

    .line 829
    :cond_d
    iget v0, p0, Lqw;->c:I

    if-eqz v0, :cond_e

    .line 830
    iget v0, p0, Lqw;->c:I

    invoke-virtual {p1, v0}, Lqr;->b(I)V

    .line 832
    :cond_e
    iget v0, p0, Lqw;->e:I

    if-eqz v0, :cond_0

    .line 833
    iget v0, p0, Lqw;->e:I

    invoke-virtual {p1, v0}, Lqr;->c(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lqr;->b(I)V

    goto/16 :goto_0

    .line 1897
    :cond_f
    new-instance v1, Lqy;

    iget-object v3, p0, Lqw;->a:Landroid/content/Context;

    iget-object v4, p0, Lqw;->H:Landroid/database/Cursor;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lqy;-><init>(Lqw;Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;Lqr;)V

    move-object v0, v1

    goto :goto_1

    .line 1926
    :cond_10
    iget-boolean v0, p0, Lqw;->E:Z

    if-eqz v0, :cond_11

    .line 4061
    iget v8, p1, Lqr;->n:I

    .line 1932
    :goto_5
    iget-object v0, p0, Lqw;->H:Landroid/database/Cursor;

    if-eqz v0, :cond_12

    .line 1933
    new-instance v6, Landroid/widget/SimpleCursorAdapter;

    iget-object v7, p0, Lqw;->a:Landroid/content/Context;

    iget-object v9, p0, Lqw;->H:Landroid/database/Cursor;

    new-array v10, v12, [Ljava/lang/String;

    iget-object v0, p0, Lqw;->I:Ljava/lang/String;

    aput-object v0, v10, v4

    new-array v11, v12, [I

    const v0, 0x1020014

    aput v0, v11, v4

    invoke-direct/range {v6 .. v11}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v0, v6

    goto/16 :goto_1

    .line 5061
    :cond_11
    iget v8, p1, Lqr;->o:I

    goto :goto_5

    .line 1935
    :cond_12
    iget-object v0, p0, Lqw;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_13

    .line 1936
    iget-object v0, p0, Lqw;->t:Landroid/widget/ListAdapter;

    goto/16 :goto_1

    .line 1938
    :cond_13
    new-instance v0, Lrc;

    iget-object v1, p0, Lqw;->a:Landroid/content/Context;

    iget-object v2, p0, Lqw;->s:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v8, v2}, Lrc;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1962
    :cond_14
    iget-object v0, p0, Lqw;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_6

    .line 1963
    new-instance v0, Lra;

    invoke-direct {v0, p0, v5, p1}, Lra;-><init>(Lqw;Landroid/widget/ListView;Lqr;)V

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_2

    .line 1982
    :cond_15
    iget-boolean v0, p0, Lqw;->D:Z

    if-eqz v0, :cond_8

    .line 1983
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_3

    .line 861
    :cond_16
    iget-object v0, p0, Lqw;->w:Landroid/view/View;

    invoke-virtual {p1, v0}, Lqr;->b(Landroid/view/View;)V

    goto/16 :goto_4

    .line 863
    :cond_17
    iget v0, p0, Lqw;->v:I

    if-eqz v0, :cond_a

    .line 864
    iget v0, p0, Lqw;->v:I

    invoke-virtual {p1, v0}, Lqr;->a(I)V

    goto/16 :goto_4
.end method
