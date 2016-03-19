.class final Lbod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbje;


# instance fields
.field final synthetic a:Lbfd;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:I

.field final synthetic h:Landroid/view/View;

.field final synthetic i:Landroid/widget/AbsListView;

.field final synthetic j:Lbng;


# direct methods
.method constructor <init>(Lbng;Lbfd;ZIIIZILandroid/view/View;Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 3830
    iput-object p1, p0, Lbod;->j:Lbng;

    iput-object p2, p0, Lbod;->a:Lbfd;

    iput-boolean p3, p0, Lbod;->b:Z

    iput p4, p0, Lbod;->c:I

    iput p5, p0, Lbod;->d:I

    iput p6, p0, Lbod;->e:I

    iput-boolean p7, p0, Lbod;->f:Z

    iput p8, p0, Lbod;->g:I

    iput-object p9, p0, Lbod;->h:Landroid/view/View;

    iput-object p10, p0, Lbod;->i:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbjb;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbjb;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3834
    iget-object v2, p0, Lbod;->j:Lbng;

    .line 6285
    iget-boolean v2, v2, Lbng;->aK:Z

    .line 3834
    if-eqz v2, :cond_0

    .line 3835
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xba2

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    .line 3840
    :cond_0
    sget-boolean v2, Lfcu;->f:Z

    if-eqz v2, :cond_1

    .line 3841
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xba3

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    .line 3845
    :cond_1
    iget-boolean v2, p0, Lbod;->b:Z

    if-eqz v2, :cond_a

    .line 3846
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xac6

    iget v4, p0, Lbod;->c:I

    iget v5, p0, Lbod;->d:I

    sub-int/2addr v4, v5

    iget v5, p0, Lbod;->e:I

    sub-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Laal;->a(Lbfd;II)V

    .line 3850
    iget v2, p0, Lbod;->d:I

    if-nez v2, :cond_2

    .line 3851
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xba1

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    .line 3856
    :cond_2
    iget-object v2, p0, Lbod;->j:Lbng;

    .line 8182
    invoke-virtual {v2}, Lbng;->d()I

    move-result v2

    invoke-static {v2}, Laal;->g(I)Z

    move-result v2

    .line 3856
    if-eqz v2, :cond_6

    .line 3857
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xb7e

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    .line 3872
    :goto_0
    iget-object v2, p0, Lbod;->j:Lbng;

    .line 10285
    iget-object v2, v2, Lbng;->aI:Lhq;

    .line 3872
    invoke-virtual {v2}, Lhq;->size()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 3873
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xb82

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    .line 3877
    :cond_3
    const-string v2, "Babel_Scroll"

    const-string v3, "message list loaded without bottom message showing, first message showing: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lbod;->d:I

    iget v5, p0, Lbod;->d:I

    iget v6, p0, Lbod;->e:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lbod;->c:I

    iget-object v7, p0, Lbod;->j:Lbng;

    .line 3887
    invoke-virtual {v7}, Lbng;->d()I

    move-result v7

    iget-object v8, p0, Lbod;->j:Lbng;

    .line 11285
    iget-object v8, v8, Lbng;->aI:Lhq;

    .line 3889
    invoke-virtual {v8}, Lhq;->size()I

    move-result v8

    if-le v8, v0, :cond_9

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x76

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", last message showing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", total: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", merged conversation? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    .line 3877
    invoke-static {v2, v0, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3931
    :cond_4
    :goto_2
    iget-object v0, p0, Lbod;->j:Lbng;

    .line 3932
    invoke-virtual {v0}, Lbng;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "babel_crash_on_conversation_scroll_error"

    .line 3931
    invoke-static {v0, v2, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3935
    const-string v0, "message list not aligned"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 3937
    :cond_5
    return-void

    .line 3860
    :cond_6
    iget-object v2, p0, Lbod;->j:Lbng;

    .line 9190
    invoke-virtual {v2}, Lbng;->d()I

    move-result v2

    invoke-static {v2}, Laal;->e(I)Z

    move-result v2

    .line 3860
    if-eqz v2, :cond_7

    .line 3861
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xb7f

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    goto/16 :goto_0

    .line 3864
    :cond_7
    iget-object v2, p0, Lbod;->j:Lbng;

    .line 10194
    invoke-virtual {v2}, Lbng;->d()I

    move-result v2

    invoke-static {v2}, Laal;->h(I)Z

    move-result v2

    .line 3864
    if-eqz v2, :cond_8

    .line 3865
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xb80

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    goto/16 :goto_0

    .line 3868
    :cond_8
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xb81

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 3889
    goto/16 :goto_1

    .line 3890
    :cond_a
    iget-boolean v2, p0, Lbod;->f:Z

    if-eqz v2, :cond_4

    .line 3891
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xac7

    iget v4, p0, Lbod;->g:I

    invoke-static {v2, v3, v4}, Laal;->a(Lbfd;II)V

    .line 3895
    iget-object v2, p0, Lbod;->j:Lbng;

    .line 13182
    invoke-virtual {v2}, Lbng;->d()I

    move-result v2

    invoke-static {v2}, Laal;->g(I)Z

    move-result v2

    .line 3895
    if-eqz v2, :cond_c

    .line 3896
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xb84

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    .line 3913
    :goto_3
    iget-object v2, p0, Lbod;->j:Lbng;

    .line 15285
    iget-object v2, v2, Lbng;->aI:Lhq;

    .line 3913
    invoke-virtual {v2}, Lhq;->size()I

    move-result v2

    if-le v2, v0, :cond_b

    .line 3914
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xb88

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    .line 3919
    :cond_b
    const-string v2, "Babel_Scroll"

    const-string v3, "message list loaded with bottom message not aligned, last bottom: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbod;->h:Landroid/view/View;

    .line 3923
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v5, p0, Lbod;->i:Landroid/widget/AbsListView;

    .line 3925
    invoke-virtual {v5}, Landroid/widget/AbsListView;->getBottom()I

    move-result v5

    iget-object v6, p0, Lbod;->j:Lbng;

    .line 3927
    invoke-virtual {v6}, Lbng;->d()I

    move-result v6

    iget-object v7, p0, Lbod;->j:Lbng;

    .line 16285
    iget-object v7, v7, Lbng;->aI:Lhq;

    .line 3929
    invoke-virtual {v7}, Lhq;->size()I

    move-result v7

    if-le v7, v0, :cond_f

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x57

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", listBottom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", merged conversation?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    .line 3919
    invoke-static {v2, v0, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 3899
    :cond_c
    iget-object v2, p0, Lbod;->j:Lbng;

    .line 14190
    invoke-virtual {v2}, Lbng;->d()I

    move-result v2

    invoke-static {v2}, Laal;->e(I)Z

    move-result v2

    .line 3899
    if-eqz v2, :cond_d

    .line 3900
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xb85

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    goto/16 :goto_3

    .line 3903
    :cond_d
    iget-object v2, p0, Lbod;->j:Lbng;

    .line 15194
    invoke-virtual {v2}, Lbng;->d()I

    move-result v2

    invoke-static {v2}, Laal;->h(I)Z

    move-result v2

    .line 3903
    if-eqz v2, :cond_e

    .line 3904
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xb86

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    goto/16 :goto_3

    .line 3908
    :cond_e
    iget-object v2, p0, Lbod;->a:Lbfd;

    const/16 v3, 0xb87

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    goto/16 :goto_3

    :cond_f
    move v0, v1

    .line 3929
    goto :goto_4
.end method
