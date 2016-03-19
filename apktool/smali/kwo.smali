.class final enum Lkwo;
.super Lkwm;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    .line 1090
    invoke-direct {p0, p1, v0}, Lkwm;-><init>(Ljava/lang/String;I)V

    .line 98
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    check-cast p1, Ljava/util/Map$Entry;

    .line 1102
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 98
    return-object v0
.end method
