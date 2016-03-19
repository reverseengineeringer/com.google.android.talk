.class public Lhoy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lhou;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2033
    new-instance v0, Lhou;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lhou;-><init>(I)V

    iput-object v0, p0, Lhoy;->a:Lhou;

    .line 2035
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lhpc;)Z
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Lhoy;->a:Lhou;

    iget-object v1, p2, Lhpc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhou;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Lhpc;Z)Z
    .locals 2

    .prologue
    .line 1040
    iget-object v0, p0, Lhoy;->a:Lhou;

    iget-object v1, p2, Lhpc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhou;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1042
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
