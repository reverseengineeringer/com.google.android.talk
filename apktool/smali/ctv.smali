.class Lctv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/database/Cursor;Lctv;)V
    .locals 2

    .prologue
    .line 974
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lctv;->a:Ljava/lang/String;

    .line 975
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lctv;->b:Ljava/lang/String;

    .line 977
    const/4 v0, 0x5

    .line 978
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lctv;->c:Ljava/lang/String;

    .line 979
    const/4 v0, 0x6

    .line 980
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lctv;->d:Ljava/lang/String;

    .line 981
    const/4 v0, 0x7

    .line 982
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lezc;->d(I)Z

    move-result v0

    iput-boolean v0, p1, Lctv;->f:Z

    .line 983
    const/16 v0, 0x8

    .line 984
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 983
    invoke-static {v0}, Lezc;->d(I)Z

    move-result v0

    iput-boolean v0, p1, Lctv;->e:Z

    .line 985
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lctv;->g:Ljava/lang/String;

    .line 986
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lctv;->h:Ljava/lang/String;

    .line 987
    const/16 v0, 0xb

    .line 988
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lctv;->i:Ljava/lang/String;

    .line 989
    const/16 v0, 0xc

    .line 990
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lctv;->j:J

    .line 991
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lctv;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lctv;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 999
    if-ne p0, p1, :cond_1

    .line 1000
    const/4 v0, 0x1

    .line 1035
    :cond_0
    :goto_0
    return v0

    .line 1002
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1006
    check-cast p1, Lctv;

    .line 1008
    iget-boolean v1, p0, Lctv;->e:Z

    iget-boolean v2, p1, Lctv;->e:Z

    if-ne v1, v2, :cond_0

    .line 1011
    iget-boolean v1, p0, Lctv;->f:Z

    iget-boolean v2, p1, Lctv;->f:Z

    if-ne v1, v2, :cond_0

    .line 1014
    iget-wide v2, p0, Lctv;->j:J

    iget-wide v4, p1, Lctv;->j:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1017
    iget-object v1, p0, Lctv;->a:Ljava/lang/String;

    iget-object v2, p1, Lctv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1020
    iget-object v1, p0, Lctv;->b:Ljava/lang/String;

    iget-object v2, p1, Lctv;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    iget-object v1, p0, Lctv;->c:Ljava/lang/String;

    iget-object v2, p1, Lctv;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    iget-object v1, p0, Lctv;->d:Ljava/lang/String;

    iget-object v2, p1, Lctv;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    iget-object v1, p0, Lctv;->g:Ljava/lang/String;

    iget-object v2, p1, Lctv;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1032
    iget-object v1, p0, Lctv;->h:Ljava/lang/String;

    iget-object v2, p1, Lctv;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    iget-object v0, p0, Lctv;->i:Ljava/lang/String;

    iget-object v1, p1, Lctv;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lctv;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
