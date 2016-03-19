.class public final Leqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkog;"
    }
.end annotation


# instance fields
.field private final a:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final b:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final c:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final d:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkog;Lkog;Lkog;Lkog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkog;",
            "Lkog;",
            "Lkog;",
            "Lkog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Leqa;->a:Lkog;

    .line 29
    iput-object p2, p0, Leqa;->b:Lkog;

    .line 31
    iput-object p3, p0, Leqa;->c:Lkog;

    .line 33
    iput-object p4, p0, Leqa;->d:Lkog;

    .line 34
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1038
    new-instance v4, Lepv;

    iget-object v0, p0, Leqa;->a:Lkog;

    .line 1039
    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Leqa;->b:Lkog;

    .line 1040
    invoke-interface {v1}, Lkog;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljqt;

    iget-object v2, p0, Leqa;->c:Lkog;

    .line 1041
    invoke-interface {v2}, Lkog;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;

    iget-object v3, p0, Leqa;->d:Lkog;

    .line 1042
    invoke-interface {v3}, Lkog;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldll;

    invoke-direct {v4, v0, v1, v2, v3}, Lepv;-><init>(Landroid/content/Context;Ljqt;Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;Ldll;)V

    .line 10
    return-object v4
.end method
