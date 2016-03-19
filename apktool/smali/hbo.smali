.class public final Lhbo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhho;

.field public final b:Lhhs;

.field public final c:Lhhv;

.field public final d:Lhhy;

.field public final e:Lhib;


# direct methods
.method public constructor <init>(Lhhr;Lhbl;)V
    .locals 1

    .prologue
    .line 2039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2040
    new-instance v0, Lhhv;

    invoke-direct {v0, p1, p2}, Lhhv;-><init>(Lhhr;Lhbl;)V

    iput-object v0, p0, Lhbo;->c:Lhhv;

    .line 2041
    new-instance v0, Lhhy;

    invoke-direct {v0, p1, p2}, Lhhy;-><init>(Lhhr;Lhbl;)V

    iput-object v0, p0, Lhbo;->d:Lhhy;

    .line 2042
    new-instance v0, Lhib;

    invoke-direct {v0, p1, p2}, Lhib;-><init>(Lhhr;Lhbl;)V

    iput-object v0, p0, Lhbo;->e:Lhib;

    .line 2043
    new-instance v0, Lhho;

    invoke-direct {v0, p1, p2}, Lhho;-><init>(Lhhr;Lhbl;)V

    iput-object v0, p0, Lhbo;->a:Lhho;

    .line 2044
    new-instance v0, Lhhs;

    invoke-direct {v0, p1, p2}, Lhhs;-><init>(Lhhr;Lhbl;)V

    iput-object v0, p0, Lhbo;->b:Lhhs;

    .line 2045
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lhbm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lhbm;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1049
    const-class v0, Lhbf;

    if-ne p1, v0, :cond_0

    .line 1050
    iget-object v0, p0, Lhbo;->c:Lhhv;

    .line 1058
    :goto_0
    return-object v0

    .line 1051
    :cond_0
    const-class v0, Lhbh;

    if-ne p1, v0, :cond_1

    .line 1052
    iget-object v0, p0, Lhbo;->d:Lhhy;

    goto :goto_0

    .line 1053
    :cond_1
    const-class v0, Lhbj;

    if-ne p1, v0, :cond_2

    .line 1054
    iget-object v0, p0, Lhbo;->e:Lhib;

    goto :goto_0

    .line 1055
    :cond_2
    const-class v0, Lhbb;

    if-ne p1, v0, :cond_3

    .line 1056
    iget-object v0, p0, Lhbo;->a:Lhho;

    goto :goto_0

    .line 1057
    :cond_3
    const-class v0, Lhbd;

    if-ne p1, v0, :cond_4

    .line 1058
    iget-object v0, p0, Lhbo;->b:Lhhs;

    goto :goto_0

    .line 1060
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unrecognized collection type "

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(II[B)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2072
    packed-switch p1, :pswitch_data_0

    .line 2094
    :try_start_0
    const-string v0, "vclib"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown collection type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    :goto_0
    return-void

    .line 2074
    :pswitch_0
    iget-object v1, p0, Lhbo;->c:Lhhv;

    if-nez p3, :cond_0

    :goto_1
    invoke-virtual {v1, p2, v0}, Lhhv;->a(ILlyi;)V
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2096
    :catch_0
    move-exception v0

    .line 2097
    const-string v1, "vclib"

    const-string v2, "Unable to parse proto from bytes"

    invoke-static {v1, v2, v0}, Lhlk;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2075
    :cond_0
    :try_start_1
    new-instance v0, Lkhf;

    invoke-direct {v0}, Lkhf;-><init>()V

    .line 2131
    array-length v2, p3

    invoke-static {v0, p3, v2}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2075
    check-cast v0, Lkhf;

    goto :goto_1

    .line 2078
    :pswitch_1
    iget-object v1, p0, Lhbo;->d:Lhhy;

    if-nez p3, :cond_1

    :goto_2
    invoke-virtual {v1, p2, v0}, Lhhy;->a(ILlyi;)V

    goto :goto_0

    .line 2079
    :cond_1
    new-instance v0, Lkhk;

    invoke-direct {v0}, Lkhk;-><init>()V

    .line 3131
    array-length v2, p3

    invoke-static {v0, p3, v2}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2079
    check-cast v0, Lkhk;

    goto :goto_2

    .line 2082
    :pswitch_2
    iget-object v1, p0, Lhbo;->e:Lhib;

    if-nez p3, :cond_2

    :goto_3
    invoke-virtual {v1, p2, v0}, Lhib;->a(ILlyi;)V

    goto :goto_0

    .line 2083
    :cond_2
    new-instance v0, Lkja;

    invoke-direct {v0}, Lkja;-><init>()V

    .line 4131
    array-length v2, p3

    invoke-static {v0, p3, v2}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2083
    check-cast v0, Lkja;

    goto :goto_3

    .line 2086
    :pswitch_3
    iget-object v1, p0, Lhbo;->a:Lhho;

    if-nez p3, :cond_3

    :goto_4
    invoke-virtual {v1, p2, v0}, Lhho;->a(ILlyi;)V

    goto :goto_0

    .line 2087
    :cond_3
    new-instance v0, Lkgd;

    invoke-direct {v0}, Lkgd;-><init>()V

    .line 5131
    array-length v2, p3

    invoke-static {v0, p3, v2}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2087
    check-cast v0, Lkgd;

    goto :goto_4

    .line 2090
    :pswitch_4
    iget-object v1, p0, Lhbo;->b:Lhhs;

    if-nez p3, :cond_4

    :goto_5
    invoke-virtual {v1, p2, v0}, Lhhs;->a(ILlyi;)V

    goto :goto_0

    .line 2091
    :cond_4
    new-instance v0, Lkgy;

    invoke-direct {v0}, Lkgy;-><init>()V

    .line 6131
    array-length v2, p3

    invoke-static {v0, p3, v2}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 2091
    check-cast v0, Lkgy;
    :try_end_1
    .catch Llyg; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 2072
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 7106
    iget-object v0, p0, Lhbo;->d:Lhhy;

    invoke-virtual {v0, p1}, Lhhy;->a(Ljava/lang/String;)V

    .line 7107
    return-void
.end method
