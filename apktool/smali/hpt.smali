.class public final Lhpt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lhpz;


# direct methods
.method public constructor <init>(Lhpz;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lhpt;->a:Lhpz;

    .line 16
    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    .line 1020
    iget-object v0, p0, Lhpt;->a:Lhpz;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    .line 1021
    iget-object v1, p0, Lhpt;->a:Lhpz;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lhpz;->a(I)Lhqb;

    move-result-object v1

    .line 1022
    const-string v2, "is_managed_account"

    invoke-interface {v0, v2}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v2

    .line 1023
    const-string v3, "is_managed_account"

    invoke-interface {v1, v3}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v3

    .line 1024
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 1025
    const/4 v0, 0x1

    .line 1028
    :goto_0
    return v0

    .line 1027
    :cond_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    .line 1028
    const/4 v0, -0x1

    goto :goto_0

    .line 1031
    :cond_1
    const-string v2, "account_name"

    invoke-interface {v0, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "account_name"

    .line 1032
    invoke-interface {v1, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
