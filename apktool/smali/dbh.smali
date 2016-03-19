.class public Ldbh;
.super Lcbp;
.source "SourceFile"


# instance fields
.field a:J

.field aj:Ldbt;

.field ak:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field al:Lbdy;

.field am:Z

.field final an:Ldbn;

.field final ao:Ldbp;

.field ap:Lcqr;

.field aq:Landroid/os/Parcelable;

.field private final ar:Lhwp;

.field private as:Landroid/support/v7/widget/RecyclerView;

.field private at:Ldbq;

.field private au:Ldbu;

.field private av:Ldbs;

.field private aw:Ldbm;

.field private ax:Ldbl;

.field private ay:Landroid/view/View$OnClickListener;

.field b:J

.field c:Lhpu;

.field d:Ldas;

.field e:Z

.field f:Lbfd;

.field g:Laxq;

.field h:Lbkw;

.field i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lcbp;-><init>()V

    .line 120
    new-instance v0, Lhwp;

    iget-object v1, p0, Ldbh;->lifecycle:Linz;

    invoke-direct {v0, v1}, Lhwp;-><init>(Liog;)V

    iput-object v0, p0, Ldbh;->ar:Lhwp;

    .line 131
    new-instance v0, Ldbq;

    .line 1450
    invoke-direct {v0, p0}, Ldbq;-><init>(Ldbh;)V

    .line 131
    iput-object v0, p0, Ldbh;->at:Ldbq;

    .line 132
    new-instance v0, Ldbu;

    .line 1505
    invoke-direct {v0, p0}, Ldbu;-><init>(Ldbh;)V

    .line 132
    iput-object v0, p0, Ldbh;->au:Ldbu;

    .line 133
    new-instance v0, Ldbs;

    .line 1650
    invoke-direct {v0, p0}, Ldbs;-><init>(Ldbh;)V

    .line 133
    iput-object v0, p0, Ldbh;->av:Ldbs;

    .line 134
    new-instance v0, Ldbt;

    .line 1745
    invoke-direct {v0, p0}, Ldbt;-><init>(Ldbh;)V

    .line 134
    iput-object v0, p0, Ldbh;->aj:Ldbt;

    .line 136
    new-instance v0, Ldbm;

    .line 1772
    invoke-direct {v0, p0}, Ldbm;-><init>(Ldbh;)V

    .line 136
    iput-object v0, p0, Ldbh;->aw:Ldbm;

    .line 137
    new-instance v0, Ldbl;

    .line 1817
    invoke-direct {v0, p0}, Ldbl;-><init>(Ldbh;)V

    .line 137
    iput-object v0, p0, Ldbh;->ax:Ldbl;

    .line 138
    new-instance v0, Ldbo;

    .line 2442
    invoke-direct {v0, p0}, Ldbo;-><init>(Ldbh;)V

    .line 138
    iput-object v0, p0, Ldbh;->ay:Landroid/view/View$OnClickListener;

    .line 145
    new-instance v0, Ldbn;

    .line 2556
    invoke-direct {v0, p0}, Ldbn;-><init>(Ldbh;)V

    .line 145
    iput-object v0, p0, Ldbh;->an:Ldbn;

    .line 146
    new-instance v0, Ldbp;

    .line 3518
    invoke-direct {v0, p0}, Ldbp;-><init>(Ldbh;)V

    .line 146
    iput-object v0, p0, Ldbh;->ao:Ldbp;

    .line 152
    new-instance v0, Lexm;

    iget-object v1, p0, Ldbh;->lifecycle:Linz;

    invoke-direct {v0, p0, v1}, Lexm;-><init>(Lav;Liog;)V

    .line 153
    return-void
.end method

.method private a()Lbfd;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Ldbh;->c:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    return-object v0
.end method

.method private a(Lbdy;I)V
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Ldbh;->f:Lbfd;

    invoke-static {v0, p2}, Laal;->a(Lbfd;I)V

    .line 9132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9133
    const-string v1, "action_sheet_hangouts_contact"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9134
    new-instance v1, Lczt;

    invoke-direct {v1}, Lczt;-><init>()V

    .line 9135
    invoke-virtual {v1, v0}, Lczt;->setArguments(Landroid/os/Bundle;)V

    .line 439
    invoke-virtual {p0}, Ldbh;->getFragmentManager()Lbg;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lau;->a(Lbg;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method static synthetic a(Ldbh;Lbdy;)V
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0xad0

    invoke-direct {p0, p1, v0}, Ldbh;->a(Lbdy;I)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 343
    if-nez p1, :cond_0

    .line 376
    :goto_0
    return-void

    .line 349
    :cond_0
    sget v0, Laen;->ga:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 350
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->tH:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 351
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-boolean v0, p0, Ldbh;->am:Z

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 354
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Ldbh;->ar:Lhwp;

    sget-object v1, Lhws;->b:Lhws;

    invoke-virtual {v0, v1}, Lhwp;->a(Lhws;)V

    goto :goto_0

    .line 8379
    :cond_1
    iget-object v0, p0, Ldbh;->d:Ldas;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldbh;->d:Ldas;

    invoke-virtual {v0, v1}, Ldas;->b(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 356
    :goto_1
    if-eqz v0, :cond_4

    .line 357
    iget-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 358
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Ldbh;->ar:Lhwp;

    sget-object v1, Lhws;->a:Lhws;

    invoke-virtual {v0, v1}, Lhwp;->a(Lhws;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 8379
    goto :goto_1

    .line 360
    :cond_4
    invoke-virtual {p0}, Ldbh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 361
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 363
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 364
    sget v0, Laen;->jI:I

    sget v1, Laen;->jH:I

    invoke-virtual {p0, p1, v0, v1}, Ldbh;->setupEmptyView(Landroid/view/View;II)V

    .line 365
    iget-object v0, p0, Ldbh;->ar:Lhwp;

    sget-object v1, Lhws;->c:Lhws;

    invoke-virtual {v0, v1}, Lhwp;->a(Lhws;)V

    .line 366
    iget-object v0, p0, Ldbh;->f:Lbfd;

    const/16 v1, 0x85a

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 368
    :cond_5
    iget-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Ldbh;->aq:Landroid/os/Parcelable;

    if-eqz v0, :cond_6

    .line 370
    iget-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->d()Laab;

    move-result-object v0

    iget-object v1, p0, Ldbh;->aq:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Laab;->a(Landroid/os/Parcelable;)V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Ldbh;->aq:Landroid/os/Parcelable;

    .line 373
    :cond_6
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Ldbh;->ar:Lhwp;

    sget-object v1, Lhws;->b:Lhws;

    invoke-virtual {v0, v1}, Lhwp;->a(Lhws;)V

    goto/16 :goto_0
.end method

.method public a(Laxq;)V
    .locals 1

    .prologue
    .line 422
    iput-object p1, p0, Ldbh;->g:Laxq;

    .line 423
    iget-object v0, p0, Ldbh;->aw:Ldbm;

    invoke-virtual {p1, v0}, Laxq;->a(Laxs;)V

    .line 424
    return-void
.end method

.method a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Ldbh;->ar:Lhwp;

    sget-object v1, Lhws;->a:Lhws;

    invoke-virtual {v0, v1}, Lhwp;->a(Lhws;)V

    .line 294
    invoke-virtual {p0}, Ldbh;->getLoaderManager()Lcj;

    move-result-object v0

    .line 296
    if-eqz p1, :cond_1

    .line 297
    iget-boolean v1, p0, Ldbh;->i:Z

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Ldbh;->av:Ldbs;

    invoke-virtual {v0, v3, v2, v1}, Lcj;->b(ILandroid/os/Bundle;Lck;)Lfe;

    .line 300
    :cond_0
    iget-object v1, p0, Ldbh;->av:Ldbs;

    invoke-virtual {v0, v4, v2, v1}, Lcj;->b(ILandroid/os/Bundle;Lck;)Lfe;

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-boolean v1, p0, Ldbh;->i:Z

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Ldbh;->av:Ldbs;

    invoke-virtual {v0, v3, v2, v1}, Lcj;->a(ILandroid/os/Bundle;Lck;)Lfe;

    .line 305
    :cond_2
    iget-object v1, p0, Ldbh;->av:Ldbs;

    invoke-virtual {v0, v4, v2, v1}, Lcj;->a(ILandroid/os/Bundle;Lck;)Lfe;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 430
    iput-boolean p1, p0, Ldbh;->e:Z

    .line 431
    return-void
.end method

.method protected isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 414
    iget-object v1, p0, Ldbh;->g:Laxq;

    invoke-virtual {v1}, Laxq;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldbh;->d:Ldas;

    invoke-virtual {v1, v0}, Ldas;->c(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcbp;->onAttachBinder(Landroid/os/Bundle;)V

    .line 158
    iget-object v0, p0, Ldbh;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Ldbh;->c:Lhpu;

    .line 4212
    iget-object v0, p0, Ldbh;->binder:Lilh;

    const-class v1, Ldck;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldck;

    .line 4213
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->tW:I

    new-instance v2, Ldbi;

    invoke-direct {v2, p0}, Ldbi;-><init>(Ldbh;)V

    invoke-interface {v0, v1, v2}, Ldck;->a(ILdcl;)V

    .line 161
    iget-object v0, p0, Ldbh;->binder:Lilh;

    const-class v1, Lcqs;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqs;

    .line 162
    const/16 v1, 0x11

    invoke-interface {v0, v1}, Lcqs;->a(I)Lcqr;

    move-result-object v0

    iput-object v0, p0, Ldbh;->ap:Lcqr;

    .line 163
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 797
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 798
    iget-object v2, p0, Ldbh;->ax:Ldbl;

    if-eqz v2, :cond_0

    .line 799
    packed-switch v1, :pswitch_data_0

    .line 814
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 801
    :pswitch_0
    iget-object v1, p0, Ldbh;->al:Lbdy;

    const/16 v2, 0xad1

    invoke-direct {p0, v1, v2}, Ldbh;->a(Lbdy;I)V

    goto :goto_0

    .line 806
    :pswitch_1
    iget-object v1, p0, Ldbh;->al:Lbdy;

    invoke-virtual {v1}, Lbdy;->e()Ljava/lang/String;

    move-result-object v1

    .line 9390
    iget-object v2, p0, Ldbh;->aj:Ldbt;

    invoke-static {v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    .line 808
    invoke-direct {p0}, Ldbh;->a()Lbfd;

    move-result-object v2

    iget-object v3, p0, Ldbh;->al:Lbdy;

    .line 809
    invoke-virtual {v3}, Lbdy;->i()Ljava/lang/String;

    move-result-object v3

    .line 808
    invoke-static {v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->j(Lbfd;Ljava/lang/String;)I

    move-result v2

    .line 810
    iget-object v3, p0, Ldbh;->ak:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 168
    if-eqz p3, :cond_0

    .line 169
    const-string v0, "scroll_state"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Ldbh;->aq:Landroid/os/Parcelable;

    .line 172
    :cond_0
    invoke-direct {p0}, Ldbh;->a()Lbfd;

    move-result-object v0

    iput-object v0, p0, Ldbh;->f:Lbfd;

    .line 175
    invoke-virtual {p0}, Ldbh;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "conversation_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbkw;

    iput-object v0, p0, Ldbh;->h:Lbkw;

    .line 176
    iget-object v0, p0, Ldbh;->h:Lbkw;

    if-nez v0, :cond_1

    .line 177
    sget-object v0, Lbkw;->a:Lbkw;

    iput-object v0, p0, Ldbh;->h:Lbkw;

    .line 179
    :cond_1
    iget-object v0, p0, Ldbh;->h:Lbkw;

    sget-object v2, Lbkw;->b:Lbkw;

    if-eq v0, v2, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ldbh;->i:Z

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ldbh;->ak:Landroid/util/SparseArray;

    .line 183
    iget-object v0, p0, Ldbh;->context:Lill;

    invoke-static {v0}, Lezc;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    invoke-virtual {p0}, Ldbh;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 187
    :cond_2
    sget v0, Laal;->ot:I

    .line 188
    invoke-virtual {p0, p1, p2, p3, v0}, Ldbh;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v9

    .line 190
    const v0, 0x102000a

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    .line 191
    iget-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 192
    iget-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 193
    new-instance v0, Lyu;

    .line 194
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    invoke-direct {v0, v8}, Lyu;-><init>(B)V

    .line 195
    invoke-virtual {v0}, Lyu;->o()V

    .line 196
    iget-object v2, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->a(Laab;)V

    .line 197
    iget-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 198
    iget-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Ldbh;->registerForContextMenu(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Ldbh;->au:Ldbu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Laae;)V

    .line 4311
    iget-object v0, p0, Ldbh;->g:Laxq;

    if-nez v0, :cond_3

    .line 4312
    new-instance v0, Laxq;

    invoke-direct {v0}, Laxq;-><init>()V

    iput-object v0, p0, Ldbh;->g:Laxq;

    .line 4314
    :cond_3
    new-instance v0, Ldas;

    invoke-virtual {p0}, Ldbh;->getActivity()Lba;

    move-result-object v1

    invoke-direct {p0}, Ldbh;->a()Lbfd;

    move-result-object v2

    iget-object v3, p0, Ldbh;->g:Laxq;

    iget-object v4, p0, Ldbh;->ax:Ldbl;

    iget-object v5, p0, Ldbh;->at:Ldbq;

    iget-object v6, p0, Ldbh;->ay:Landroid/view/View$OnClickListener;

    iget-boolean v7, p0, Ldbh;->i:Z

    invoke-direct/range {v0 .. v7}, Ldas;-><init>(Landroid/app/Activity;Lbfd;Laxq;Landroid/view/View$OnCreateContextMenuListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    iput-object v0, p0, Ldbh;->d:Ldas;

    .line 4316
    iget-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    .line 4317
    iget-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Ldbh;->d:Ldas;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Lzu;)V

    .line 203
    :cond_4
    invoke-virtual {p0, v8}, Ldbh;->a(Z)V

    .line 5227
    iget-object v0, p0, Ldbh;->context:Lill;

    const-class v1, Ldcj;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcj;

    .line 5228
    iget-object v1, p0, Ldbh;->context:Lill;

    iget-object v2, p0, Ldbh;->f:Lbfd;

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-static {v1, v2}, Lbff;->h(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.permission.READ_CONTACTS"

    .line 5229
    invoke-interface {v0, v1}, Ldcj;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "android.permission.WRITE_CONTACTS"

    .line 5230
    invoke-interface {v0, v1}, Ldcj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 208
    :cond_5
    :goto_1
    return-object v9

    :cond_6
    move v0, v8

    .line 179
    goto/16 :goto_0

    .line 5235
    :cond_7
    const-string v0, "Babel"

    const-string v1, "contact permission banner shown"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5236
    iget-object v0, p0, Ldbh;->f:Lbfd;

    const/16 v1, 0xa6f

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 5238
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->tW:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 5239
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 5240
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->tX:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 5241
    new-instance v2, Ldbj;

    invoke-direct {v2, p0, v1}, Ldbj;-><init>(Ldbh;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5252
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->tV:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 5253
    new-instance v2, Ldbk;

    invoke-direct {v2, p0, v1}, Ldbk;-><init>(Ldbh;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 333
    invoke-super {p0}, Lcbp;->onDestroy()V

    .line 335
    iget-object v0, p0, Ldbh;->an:Ldbn;

    .line 6025
    invoke-virtual {v0, v1}, Lebh;->a(I)V

    .line 336
    iget-object v0, p0, Ldbh;->ao:Ldbp;

    .line 7025
    invoke-virtual {v0, v1}, Lebh;->a(I)V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Ldbh;->ak:Landroid/util/SparseArray;

    .line 7394
    iget-object v0, p0, Ldbh;->aj:Ldbt;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    .line 340
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Lcbp;->onPause()V

    .line 283
    invoke-virtual {p0}, Ldbh;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Ldbh;->g:Laxq;

    invoke-virtual {v0}, Laxq;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldbh;->d:Ldas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldas;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Ldbh;->f:Lbfd;

    const/16 v1, 0x8f1

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 289
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lcbp;->onResume()V

    .line 326
    invoke-direct {p0}, Ldbh;->a()Lbfd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Ldbh;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldbh;->a(Landroid/view/View;)V

    .line 329
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcbp;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 275
    iget-object v0, p0, Ldbh;->as:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->d()Laab;

    move-result-object v0

    invoke-virtual {v0}, Laab;->h()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Ldbh;->aq:Landroid/os/Parcelable;

    .line 277
    const-string v0, "scroll_state"

    iget-object v1, p0, Ldbh;->aq:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 278
    return-void
.end method
