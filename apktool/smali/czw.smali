.class final Lczw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lczt;


# direct methods
.method constructor <init>(Lczt;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lczw;->a:Lczt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lczw;->a:Lczt;

    .line 1052
    invoke-virtual {v0}, Lczt;->u()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 279
    check-cast v0, Lczq;

    invoke-virtual {v0, p3}, Lczq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpk;

    .line 280
    check-cast v0, Lhpn;

    .line 283
    sget-object v1, Lczx;->b:[I

    invoke-static {}, Lczy;->a()[I

    move-result-object v2

    invoke-virtual {v0}, Lhpn;->c()I

    move-result v3

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 301
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lhpn;->c()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown action sheet item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :pswitch_0
    iget-object v0, p0, Lczw;->a:Lczt;

    sget-object v1, Lbkw;->a:Lbkw;

    .line 2052
    iput-object v1, v0, Lczt;->aq:Lbkw;

    .line 286
    const/16 v0, 0x9ca

    .line 304
    :goto_0
    iget-object v1, p0, Lczw;->a:Lczt;

    .line 6052
    iget-object v1, v1, Lczt;->am:Lbfd;

    .line 304
    invoke-static {v1, v0}, Laal;->a(Lbfd;I)V

    .line 306
    iget-object v0, p0, Lczw;->a:Lczt;

    new-instance v1, Laxq;

    invoke-direct {v1}, Laxq;-><init>()V

    .line 7052
    iput-object v1, v0, Lczt;->ao:Laxq;

    .line 307
    iget-object v7, p0, Lczw;->a:Lczt;

    iget-object v0, p0, Lczw;->a:Lczt;

    .line 8052
    iget-object v0, v0, Lczt;->ak:Lilh;

    .line 308
    const-class v1, Lbjr;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    iget-object v1, p0, Lczw;->a:Lczt;

    .line 9052
    iget-object v1, v1, Lczt;->aj:Lill;

    .line 309
    iget-object v2, p0, Lczw;->a:Lczt;

    .line 10052
    iget-object v2, v2, Lczt;->al:Liog;

    .line 309
    const/4 v3, 0x0

    iget-object v4, p0, Lczw;->a:Lczt;

    iget-object v5, p0, Lczw;->a:Lczt;

    .line 11052
    iget-object v5, v5, Lczt;->ao:Laxq;

    .line 309
    iget-object v6, p0, Lczw;->a:Lczt;

    .line 12052
    iget-object v6, v6, Lczt;->aq:Lbkw;

    .line 308
    invoke-interface/range {v0 .. v6}, Lbjr;->a(Landroid/content/Context;Liog;ILav;Laxq;Lbkw;)Lbjp;

    move-result-object v0

    .line 13052
    iput-object v0, v7, Lczt;->an:Lbjp;

    .line 310
    iget-object v0, p0, Lczw;->a:Lczt;

    .line 14052
    iget-object v0, v0, Lczt;->an:Lbjp;

    .line 310
    iget-object v1, p0, Lczw;->a:Lczt;

    .line 15052
    iget-object v1, v1, Lczt;->ap:Lbdy;

    .line 310
    invoke-interface {v0, v1}, Lbjp;->a(Lbdy;)V

    .line 311
    return-void

    .line 289
    :pswitch_1
    iget-object v0, p0, Lczw;->a:Lczt;

    sget-object v1, Lbkw;->b:Lbkw;

    .line 3052
    iput-object v1, v0, Lczt;->aq:Lbkw;

    .line 290
    const/16 v0, 0x9cb

    .line 291
    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v0, p0, Lczw;->a:Lczt;

    sget-object v1, Lbkw;->c:Lbkw;

    .line 4052
    iput-object v1, v0, Lczt;->aq:Lbkw;

    .line 294
    const/16 v0, 0x9cc

    .line 295
    goto :goto_0

    .line 297
    :pswitch_3
    iget-object v0, p0, Lczw;->a:Lczt;

    sget-object v1, Lbkw;->d:Lbkw;

    .line 5052
    iput-object v1, v0, Lczt;->aq:Lbkw;

    .line 298
    const/16 v0, 0x9cd

    .line 299
    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
