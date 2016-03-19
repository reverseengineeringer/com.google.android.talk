.class public final Ldfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/database/Cursor;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/google/android/apps/hangouts/phone/DebugActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/DebugActivity;Landroid/database/Cursor;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 979
    iput-object p1, p0, Ldfd;->c:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    iput-object p2, p0, Ldfd;->a:Landroid/database/Cursor;

    iput-object p3, p0, Ldfd;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Ldfd;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Ldfd;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 985
    :cond_0
    iget-object v0, p0, Ldfd;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 986
    iget-object v0, p0, Ldfd;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 988
    :cond_1
    return-void
.end method
