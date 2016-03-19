.class public Ldpj;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final j:Z

.field public final k:Z

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Z

.field public final o:I

.field public final p:Z

.field public final q:Z

.field public final r:I

.field public final s:I

.field public final t:Z

.field public u:Ljava/lang/String;

.field private final v:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIZZZIIZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 1859
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 1860
    iput p1, p0, Ldpj;->a:I

    .line 1861
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldpj;->b:Ljava/lang/String;

    .line 1862
    iput-wide p2, p0, Ldpj;->c:J

    .line 1863
    iput-object p4, p0, Ldpj;->d:Ljava/lang/String;

    .line 1864
    iput-boolean p5, p0, Ldpj;->j:Z

    .line 1865
    iput-object p6, p0, Ldpj;->l:Ljava/lang/String;

    .line 1866
    iput-object p7, p0, Ldpj;->m:Ljava/lang/String;

    .line 1867
    iput-boolean p8, p0, Ldpj;->n:Z

    .line 1868
    iput p9, p0, Ldpj;->o:I

    .line 1869
    iput-boolean p10, p0, Ldpj;->p:Z

    .line 1870
    iput-boolean p11, p0, Ldpj;->q:Z

    .line 1871
    iput-boolean p12, p0, Ldpj;->k:Z

    .line 1873
    iput p13, p0, Ldpj;->r:I

    .line 1875
    move/from16 v0, p14

    iput v0, p0, Ldpj;->s:I

    .line 1877
    move/from16 v0, p15

    iput-boolean v0, p0, Ldpj;->t:Z

    .line 1879
    move-object/from16 v0, p16

    iput-object v0, p0, Ldpj;->v:Ljava/lang/String;

    .line 1880
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1920
    new-instance v1, Lkdf;

    invoke-direct {v1}, Lkdf;-><init>()V

    .line 1922
    iget-object v0, p0, Ldpj;->h:Lfak;

    invoke-static {p1, p2, p3, v0}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v1, Lkdf;->requestHeader:Lkdo;

    .line 1924
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lkdf;->a:Ljava/lang/Integer;

    .line 1925
    iget-object v0, p0, Ldpj;->l:Ljava/lang/String;

    iput-object v0, v1, Lkdf;->t:Ljava/lang/String;

    .line 1926
    iget v0, p0, Ldpj;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lkdf;->b:Ljava/lang/Integer;

    .line 1927
    iget-object v0, p0, Ldpj;->d:Ljava/lang/String;

    iput-object v0, v1, Lkdf;->r:Ljava/lang/String;

    .line 1928
    iget-wide v2, p0, Ldpj;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lkdf;->q:Ljava/lang/Long;

    .line 1929
    iget-object v0, p0, Ldpj;->b:Ljava/lang/String;

    iput-object v0, v1, Lkdf;->c:Ljava/lang/String;

    .line 1930
    iget-boolean v0, p0, Ldpj;->t:Z

    .line 1931
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lkdf;->E:Ljava/lang/Boolean;

    .line 1932
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1933
    const-string v2, "com.google.chat.MESSAGING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1934
    iget v2, p0, Ldpj;->a:I

    if-ne v2, v5, :cond_0

    iget-boolean v2, p0, Ldpj;->j:Z

    if-eqz v2, :cond_0

    .line 1935
    const-string v2, "com.google.hangout.RING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1936
    const-string v2, "com.google.hangout.VOICEONLY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1937
    iget-boolean v2, p0, Ldpj;->k:Z

    if-eqz v2, :cond_0

    .line 1938
    const-string v2, "com.google.hangout.PSTN_RING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v1, Lkdf;->s:[Ljava/lang/String;

    .line 1943
    iget-object v0, p0, Ldpj;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1944
    const-string v0, "Babel_RequestWriter"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1945
    const-string v2, "Babel_RequestWriter"

    const-string v3, "Unregistering removed account:"

    iget-object v0, p0, Ldpj;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1948
    :cond_1
    iget-object v0, p0, Ldpj;->m:Ljava/lang/String;

    iput-object v0, v1, Lkdf;->D:Ljava/lang/String;

    .line 1950
    :cond_2
    iget v0, p0, Ldpj;->o:I

    if-lez v0, :cond_3

    .line 1951
    iget v0, p0, Ldpj;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lkdf;->v:Ljava/lang/Integer;

    .line 1953
    :cond_3
    iget-boolean v0, p0, Ldpj;->p:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Ldpj;->q:Z

    if-eqz v0, :cond_7

    .line 1954
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v1, Lkdf;->z:[Ljava/lang/String;

    .line 1955
    iget-object v0, v1, Lkdf;->z:[Ljava/lang/String;

    const-string v2, "com.google.chat.DEVICE_SMS_ENABLED"

    aput-object v2, v0, v6

    .line 1956
    iget-object v0, v1, Lkdf;->z:[Ljava/lang/String;

    const-string v2, "com.google.chat.SMS_ACCOUNT"

    aput-object v2, v0, v5

    .line 1961
    :cond_4
    :goto_1
    iget v0, p0, Ldpj;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lkdf;->A:Ljava/lang/Integer;

    .line 1962
    iget v0, p0, Ldpj;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lkdf;->B:Ljava/lang/Integer;

    .line 1964
    iget-object v0, p0, Ldpj;->v:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1965
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    .line 1966
    iget-object v2, p0, Ldpj;->v:Ljava/lang/String;

    iput-object v2, v0, Llcf;->a:Ljava/lang/String;

    .line 1967
    new-instance v2, Lkeu;

    invoke-direct {v2}, Lkeu;-><init>()V

    .line 1968
    iput-object v0, v2, Lkeu;->a:Llcf;

    .line 1969
    iput-object v2, v1, Lkdf;->F:Lkeu;

    .line 1971
    :cond_5
    return-object v1

    .line 1945
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1957
    :cond_7
    iget-boolean v0, p0, Ldpj;->p:Z

    if-eqz v0, :cond_4

    .line 1958
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, v1, Lkdf;->z:[Ljava/lang/String;

    .line 1959
    iget-object v0, v1, Lkdf;->z:[Ljava/lang/String;

    const-string v2, "com.google.chat.DEVICE_SMS_ENABLED"

    aput-object v2, v0, v6

    goto :goto_1
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 4

    .prologue
    .line 2034
    iget v0, p0, Ldpj;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2035
    const-class v1, Lawm;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawm;

    .line 2036
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawm;->f(I)V

    .line 2041
    :goto_0
    return-void

    .line 2038
    :cond_0
    const-string v1, "Babel_RequestWriter"

    const-string v2, "Unregistering account failed: "

    .line 2039
    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 2038
    invoke-static {v1, v0, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2039
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcwi;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1990
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1991
    check-cast p1, Ldpj;

    .line 1992
    iget-object v2, p0, Ldpj;->m:Ljava/lang/String;

    iget-object v3, p1, Ldpj;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2024
    :cond_0
    :goto_0
    return v1

    .line 1996
    :cond_1
    iget v2, p0, Ldpj;->a:I

    iget v3, p1, Ldpj;->a:I

    if-eq v2, v3, :cond_3

    .line 2205
    sget-boolean v1, Ldoo;->e:Z

    .line 2000
    if-eqz v1, :cond_2

    .line 2001
    iget v1, p1, Ldpj;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x45

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Replacing a DeviceRegistrationRequest with different type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    move v1, v0

    .line 2006
    goto :goto_0

    .line 2010
    :cond_3
    iget-boolean v2, p0, Ldpj;->n:Z

    iget-boolean v3, p1, Ldpj;->n:Z

    if-eq v2, v3, :cond_5

    .line 2013
    iget-boolean v2, p0, Ldpj;->n:Z

    if-nez v2, :cond_4

    :goto_1
    move v1, v0

    .line 2019
    :goto_2
    if-eqz v1, :cond_0

    .line 3205
    sget-boolean v0, Ldoo;->e:Z

    .line 2019
    if-eqz v0, :cond_0

    .line 2020
    iget-boolean v0, p1, Ldpj;->n:Z

    iget-boolean v2, p0, Ldpj;->n:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Replacing a DeviceRegistrationRequest. Old withRetry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". New withRetry="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2013
    goto :goto_1

    :cond_5
    move v1, v0

    .line 2016
    goto :goto_2
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 1976
    iget-boolean v0, p0, Ldpj;->n:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Ldpf;->a(Lcwk;Ldvn;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 1981
    iget-boolean v0, p0, Ldpj;->n:Z

    if-eqz v0, :cond_0

    .line 1982
    invoke-static {}, Ldvd;->b()J

    move-result-wide v0

    .line 1985
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2029
    const-string v0, "devices/registerdevice"

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 1914
    iget-boolean v0, p0, Ldpj;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
