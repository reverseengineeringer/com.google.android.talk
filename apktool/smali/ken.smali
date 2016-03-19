.class public final Lken;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lken;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkcz;

.field public b:Ljyy;

.field public c:Ljyq;

.field public d:Lkcj;

.field public e:Lkba;

.field public f:Lkfd;

.field public g:Lkfo;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19846
    invoke-direct {p0}, Llyb;-><init>()V

    .line 20851
    iput-object v0, p0, Lken;->requestHeader:Lkdo;

    .line 20852
    iput-object v0, p0, Lken;->a:Lkcz;

    .line 20853
    iput-object v0, p0, Lken;->b:Ljyy;

    .line 20854
    iput-object v0, p0, Lken;->c:Ljyq;

    .line 20855
    iput-object v0, p0, Lken;->d:Lkcj;

    .line 20856
    iput-object v0, p0, Lken;->e:Lkba;

    .line 20857
    iput-object v0, p0, Lken;->f:Lkfd;

    .line 20858
    iput-object v0, p0, Lken;->g:Lkfo;

    .line 20859
    iput-object v0, p0, Lken;->eD:Llyd;

    .line 20860
    const/4 v0, -0x1

    iput v0, p0, Lken;->eE:I

    .line 19848
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 20937
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 20938
    sparse-switch v0, :sswitch_data_0

    .line 20942
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20943
    :sswitch_0
    return-object p0

    .line 20948
    :sswitch_1
    iget-object v0, p0, Lken;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 20949
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lken;->requestHeader:Lkdo;

    .line 20951
    :cond_1
    iget-object v0, p0, Lken;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 20955
    :sswitch_2
    iget-object v0, p0, Lken;->a:Lkcz;

    if-nez v0, :cond_2

    .line 20956
    new-instance v0, Lkcz;

    invoke-direct {v0}, Lkcz;-><init>()V

    iput-object v0, p0, Lken;->a:Lkcz;

    .line 20958
    :cond_2
    iget-object v0, p0, Lken;->a:Lkcz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 20962
    :sswitch_3
    iget-object v0, p0, Lken;->b:Ljyy;

    if-nez v0, :cond_3

    .line 20963
    new-instance v0, Ljyy;

    invoke-direct {v0}, Ljyy;-><init>()V

    iput-object v0, p0, Lken;->b:Ljyy;

    .line 20965
    :cond_3
    iget-object v0, p0, Lken;->b:Ljyy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 20969
    :sswitch_4
    iget-object v0, p0, Lken;->c:Ljyq;

    if-nez v0, :cond_4

    .line 20970
    new-instance v0, Ljyq;

    invoke-direct {v0}, Ljyq;-><init>()V

    iput-object v0, p0, Lken;->c:Ljyq;

    .line 20972
    :cond_4
    iget-object v0, p0, Lken;->c:Ljyq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 20976
    :sswitch_5
    iget-object v0, p0, Lken;->d:Lkcj;

    if-nez v0, :cond_5

    .line 20977
    new-instance v0, Lkcj;

    invoke-direct {v0}, Lkcj;-><init>()V

    iput-object v0, p0, Lken;->d:Lkcj;

    .line 20979
    :cond_5
    iget-object v0, p0, Lken;->d:Lkcj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 20983
    :sswitch_6
    iget-object v0, p0, Lken;->e:Lkba;

    if-nez v0, :cond_6

    .line 20984
    new-instance v0, Lkba;

    invoke-direct {v0}, Lkba;-><init>()V

    iput-object v0, p0, Lken;->e:Lkba;

    .line 20986
    :cond_6
    iget-object v0, p0, Lken;->e:Lkba;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 20990
    :sswitch_7
    iget-object v0, p0, Lken;->f:Lkfd;

    if-nez v0, :cond_7

    .line 20991
    new-instance v0, Lkfd;

    invoke-direct {v0}, Lkfd;-><init>()V

    iput-object v0, p0, Lken;->f:Lkfd;

    .line 20993
    :cond_7
    iget-object v0, p0, Lken;->f:Lkfd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 20997
    :sswitch_8
    iget-object v0, p0, Lken;->g:Lkfo;

    if-nez v0, :cond_8

    .line 20998
    new-instance v0, Lkfo;

    invoke-direct {v0}, Lkfo;-><init>()V

    iput-object v0, p0, Lken;->g:Lkfo;

    .line 21000
    :cond_8
    iget-object v0, p0, Lken;->g:Lkfo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 20938
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 19867
    iget-object v0, p0, Lken;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 19868
    const/4 v0, 0x1

    iget-object v1, p0, Lken;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 19870
    :cond_0
    iget-object v0, p0, Lken;->a:Lkcz;

    if-eqz v0, :cond_1

    .line 19871
    const/4 v0, 0x2

    iget-object v1, p0, Lken;->a:Lkcz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 19873
    :cond_1
    iget-object v0, p0, Lken;->b:Ljyy;

    if-eqz v0, :cond_2

    .line 19874
    const/4 v0, 0x3

    iget-object v1, p0, Lken;->b:Ljyy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 19876
    :cond_2
    iget-object v0, p0, Lken;->c:Ljyq;

    if-eqz v0, :cond_3

    .line 19877
    const/4 v0, 0x5

    iget-object v1, p0, Lken;->c:Ljyq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 19879
    :cond_3
    iget-object v0, p0, Lken;->d:Lkcj;

    if-eqz v0, :cond_4

    .line 19880
    const/4 v0, 0x6

    iget-object v1, p0, Lken;->d:Lkcj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 19882
    :cond_4
    iget-object v0, p0, Lken;->e:Lkba;

    if-eqz v0, :cond_5

    .line 19883
    const/4 v0, 0x7

    iget-object v1, p0, Lken;->e:Lkba;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 19885
    :cond_5
    iget-object v0, p0, Lken;->f:Lkfd;

    if-eqz v0, :cond_6

    .line 19886
    const/16 v0, 0x8

    iget-object v1, p0, Lken;->f:Lkfd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 19888
    :cond_6
    iget-object v0, p0, Lken;->g:Lkfo;

    if-eqz v0, :cond_7

    .line 19889
    const/16 v0, 0x9

    iget-object v1, p0, Lken;->g:Lkfo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 19891
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 19892
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 19896
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 19897
    iget-object v1, p0, Lken;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 19898
    const/4 v1, 0x1

    iget-object v2, p0, Lken;->requestHeader:Lkdo;

    .line 19899
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19901
    :cond_0
    iget-object v1, p0, Lken;->a:Lkcz;

    if-eqz v1, :cond_1

    .line 19902
    const/4 v1, 0x2

    iget-object v2, p0, Lken;->a:Lkcz;

    .line 19903
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19905
    :cond_1
    iget-object v1, p0, Lken;->b:Ljyy;

    if-eqz v1, :cond_2

    .line 19906
    const/4 v1, 0x3

    iget-object v2, p0, Lken;->b:Ljyy;

    .line 19907
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19909
    :cond_2
    iget-object v1, p0, Lken;->c:Ljyq;

    if-eqz v1, :cond_3

    .line 19910
    const/4 v1, 0x5

    iget-object v2, p0, Lken;->c:Ljyq;

    .line 19911
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19913
    :cond_3
    iget-object v1, p0, Lken;->d:Lkcj;

    if-eqz v1, :cond_4

    .line 19914
    const/4 v1, 0x6

    iget-object v2, p0, Lken;->d:Lkcj;

    .line 19915
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19917
    :cond_4
    iget-object v1, p0, Lken;->e:Lkba;

    if-eqz v1, :cond_5

    .line 19918
    const/4 v1, 0x7

    iget-object v2, p0, Lken;->e:Lkba;

    .line 19919
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19921
    :cond_5
    iget-object v1, p0, Lken;->f:Lkfd;

    if-eqz v1, :cond_6

    .line 19922
    const/16 v1, 0x8

    iget-object v2, p0, Lken;->f:Lkfd;

    .line 19923
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19925
    :cond_6
    iget-object v1, p0, Lken;->g:Lkfo;

    if-eqz v1, :cond_7

    .line 19926
    const/16 v1, 0x9

    iget-object v2, p0, Lken;->g:Lkfo;

    .line 19927
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19929
    :cond_7
    return v0
.end method
