.class final Lmhc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lmhf;

.field b:Lorg/xml/sax/Attributes;


# direct methods
.method constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    const/4 v0, 0x0

    iput-object v0, p0, Lmhc;->a:Lmhf;

    .line 1004
    iput-object p1, p0, Lmhc;->b:Lorg/xml/sax/Attributes;

    .line 1005
    const-string v0, "style"

    .line 1091
    invoke-static {v0, p1}, Lmgw;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    if-eqz v0, :cond_0

    .line 1007
    new-instance v1, Lmhf;

    .line 1981
    invoke-direct {v1, v0}, Lmhf;-><init>(Ljava/lang/String;)V

    .line 1007
    iput-object v1, p0, Lmhc;->a:Lmhf;

    .line 1009
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1013
    iget-object v1, p0, Lmhc;->a:Lmhf;

    if-eqz v1, :cond_3

    .line 1014
    iget-object v1, p0, Lmhc;->a:Lmhf;

    invoke-virtual {v1, p1}, Lmhf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1016
    :goto_0
    if-nez v1, :cond_2

    .line 1017
    iget-object v2, p0, Lmhc;->b:Lorg/xml/sax/Attributes;

    .line 2865
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    .line 2866
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 2867
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2868
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1019
    :cond_0
    :goto_2
    return-object v0

    .line 2866
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1023
    invoke-virtual {p0, p1}, Lmhc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x4

    .line 1027
    invoke-virtual {p0, p1}, Lmhc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1028
    if-nez v2, :cond_0

    .line 1038
    :goto_0
    return-object v0

    .line 1030
    :cond_0
    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_3

    .line 1032
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1033
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 3044
    and-int/lit16 v2, v1, 0xf00

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v1, 0xf00

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0xf0

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0xf0

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit8 v3, v1, 0xf

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v1, v2

    .line 1033
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 4024
    :cond_3
    sget-object v0, Lmgv;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 1035
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1060
    invoke-virtual {p0, p1}, Lmhc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1061
    if-nez v1, :cond_0

    .line 1067
    :goto_0
    return-object v0

    .line 1065
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1067
    :catch_0
    move-exception v1

    goto :goto_0
.end method
