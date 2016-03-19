.class public final Lcuo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgnf;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcuo;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lgne;
    .locals 3

    .prologue
    .line 834
    new-instance v1, Lcvb;

    .line 1990
    invoke-direct {v1}, Lcvb;-><init>()V

    .line 836
    iput-object p1, v1, Lcvb;->l:Landroid/view/View;

    .line 837
    sget v0, Laen;->an:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcvb;->m:Landroid/view/View;

    .line 838
    sget v0, Laen;->az:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcvb;->p:Landroid/view/View;

    .line 839
    iget-object v0, v1, Lcvb;->p:Landroid/view/View;

    sget v2, Laen;->aC:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->v:Landroid/widget/ImageView;

    .line 840
    iget-object v0, v1, Lcvb;->p:Landroid/view/View;

    sget v2, Laen;->gi:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->a:Landroid/widget/ImageView;

    .line 841
    sget v0, Laen;->ak:I

    .line 842
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcvb;->q:Landroid/widget/TextView;

    .line 843
    sget v0, Laen;->aj:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcvb;->r:Landroid/widget/TextView;

    .line 845
    sget v0, Laen;->bs:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->u:Landroid/widget/ImageView;

    .line 846
    sget v0, Laen;->al:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    iput-object v0, v1, Lcvb;->n:Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    .line 847
    sget v0, Laen;->fS:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcvb;->k:Landroid/view/View;

    .line 848
    sget v0, Laen;->am:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcvb;->I:Landroid/view/View;

    .line 850
    sget v0, Laen;->aF:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcvb;->s:Landroid/view/View;

    .line 851
    iget-object v0, v1, Lcvb;->s:Landroid/view/View;

    sget v2, Laen;->aC:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->w:Landroid/widget/ImageView;

    .line 852
    iget-object v0, v1, Lcvb;->s:Landroid/view/View;

    sget v2, Laen;->gi:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->c:Landroid/widget/ImageView;

    .line 853
    iget-object v0, v1, Lcvb;->s:Landroid/view/View;

    sget v2, Laen;->aD:I

    .line 854
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->d:Landroid/widget/ImageView;

    .line 856
    sget v0, Laen;->aG:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcvb;->t:Landroid/view/View;

    .line 857
    iget-object v0, v1, Lcvb;->t:Landroid/view/View;

    sget v2, Laen;->aC:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->x:Landroid/widget/ImageView;

    .line 858
    iget-object v0, v1, Lcvb;->t:Landroid/view/View;

    sget v2, Laen;->gi:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->g:Landroid/widget/ImageView;

    .line 859
    iget-object v0, v1, Lcvb;->t:Landroid/view/View;

    sget v2, Laen;->aD:I

    .line 860
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->h:Landroid/widget/ImageView;

    .line 862
    sget v0, Laen;->ez:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcvb;->B:Landroid/view/View;

    .line 863
    iget-object v0, v1, Lcvb;->B:Landroid/view/View;

    sget v2, Laen;->aC:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->F:Landroid/widget/ImageView;

    .line 864
    iget-object v0, v1, Lcvb;->B:Landroid/view/View;

    sget v2, Laen;->gi:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->b:Landroid/widget/ImageView;

    .line 865
    sget v0, Laen;->eA:I

    .line 866
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->C:Landroid/widget/ImageView;

    .line 867
    sget v0, Laen;->eB:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcvb;->y:Landroid/view/View;

    .line 868
    sget v0, Laen;->ey:I

    .line 869
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcvb;->z:Landroid/widget/TextView;

    .line 870
    sget v0, Laen;->ex:I

    .line 871
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcvb;->A:Landroid/widget/TextView;

    .line 873
    sget v0, Laen;->bt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcvb;->D:Landroid/view/View;

    .line 874
    iget-object v0, v1, Lcvb;->D:Landroid/view/View;

    sget v2, Laen;->aC:I

    .line 875
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->G:Landroid/widget/ImageView;

    .line 876
    iget-object v0, v1, Lcvb;->D:Landroid/view/View;

    sget v2, Laen;->gi:I

    .line 877
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->e:Landroid/widget/ImageView;

    .line 878
    iget-object v0, v1, Lcvb;->D:Landroid/view/View;

    sget v2, Laen;->aD:I

    .line 879
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->f:Landroid/widget/ImageView;

    .line 881
    sget v0, Laen;->bu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcvb;->E:Landroid/view/View;

    .line 882
    iget-object v0, v1, Lcvb;->E:Landroid/view/View;

    sget v2, Laen;->aC:I

    .line 883
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->H:Landroid/widget/ImageView;

    .line 884
    iget-object v0, v1, Lcvb;->E:Landroid/view/View;

    sget v2, Laen;->gi:I

    .line 885
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->i:Landroid/widget/ImageView;

    .line 886
    iget-object v0, v1, Lcvb;->E:Landroid/view/View;

    sget v2, Laen;->aD:I

    .line 887
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcvb;->j:Landroid/widget/ImageView;

    .line 888
    return-object v1
.end method
