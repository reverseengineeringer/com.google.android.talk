.class Lcom/google/android/libraries/componentview/components/elements/CardComponent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/libraries/componentview/components/elements/CardComponent;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/componentview/components/elements/CardComponent;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$1;->a:Lcom/google/android/libraries/componentview/components/elements/CardComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$1;->a:Lcom/google/android/libraries/componentview/components/elements/CardComponent;

    .line 1055
    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->e:Lcom/google/android/libraries/componentview/components/elements/api/nano/CardProto$CardArgs;

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardProto$CardArgs;->a(Z)Lcom/google/android/libraries/componentview/components/elements/api/nano/CardProto$CardArgs;

    .line 221
    return-void
.end method
