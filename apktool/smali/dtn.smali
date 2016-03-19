.class final enum Ldtn;
.super Ldtm;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 1015
    invoke-direct {p0, p1, v0}, Ldtm;-><init>(Ljava/lang/String;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 20
    invoke-static {v0}, Lezc;->d(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/ContentValues;)V
    .locals 1

    .prologue
    .line 25
    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p2}, Lezc;->a(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v0

    .line 26
    invoke-virtual {p3, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    return-void
.end method
